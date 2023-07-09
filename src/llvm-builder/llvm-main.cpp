#include <iostream>
#include "llvmBuilder.hpp"
#include "fdriver.hh"
#include "ast.hpp"


#include "llvm/ADT/Triple.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/CodeGen/CommandFlags.inc"
#include "llvm/CodeGen/LinkAllCodegenComponents.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/IR/AutoUpgrade.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/Target/TargetMachine.h"


using namespace std;
using namespace std::literals::string_literals;


int main(int argc, char **argv) {
    string input_path = argv[1];
    std::cout<<input_path<<std::endl;
    string target_path = input_path.substr(0, input_path.size() - 3);
    bool showAst = false;
    bool showLLVM = false;
    bool showFinal = true;

    TreeNodeTopLevel *root;

    // start parsing process, get the root of AST
    fdriver driver;
    root = driver.parse(input_path);
    //root = runParser(input_path);
    auto tree = astRoot(root);
    
    if(showAst) {
        TreeNodePrinter pr;
        pr.visit(*root);
    }

    LLVMBuilder builder;

    tree.run_visitor(builder);
    auto mod = builder.build();
    mod->setSourceFileName(input_path);

    error_code error_msg;

    //todo support other target structure

    LLVMInitializeRISCVTarget();
    LLVMInitializeRISCVTargetInfo();
    LLVMInitializeRISCVTargetMC();
    LLVMInitializeRISCVAsmParser();
    LLVMInitializeRISCVAsmPrinter();


    llvm::Triple TheTriple;
    //TheTriple.setTriple(llvm::sys::getDefaultTargetTriple());
    TheTriple.setArch(llvm::Triple::riscv64);
    TheTriple.setObjectFormat(llvm::Triple::ObjectFormatType::ELF);
    TheTriple.setEnvironment(llvm::Triple::EnvironmentType::Simulator);
    //TheTriple.setOS(llvm::Triple::OSType::UnknownOS);
    //TheTriple.setVendor(llvm::Triple::VendorType::UnknownVendor);

    string Error;
    const llvm::Target *TheTarget = llvm::TargetRegistry::lookupTarget("", TheTriple, Error);

    string CPUStr = "";
    llvm::StringRef FeaturesStr;

    llvm::CodeGenOpt::Level OLvl = llvm::CodeGenOpt::Aggressive;
    llvm::TargetOptions Options = llvm::TargetOptions();

    unique_ptr<llvm::TargetMachine> Target(TheTarget->createTargetMachine(
            TheTriple.getTriple(), CPUStr, FeaturesStr, Options, llvm::None, llvm::None, OLvl)
        );
    assert(Target);



    llvm::legacy::PassManager PM;
    llvm::TargetLibraryInfoImpl TLII(llvm::Triple(mod->getTargetTriple()));
    PM.add(new llvm::TargetLibraryInfoWrapperPass(TLII));
    mod->setDataLayout(Target->createDataLayout());
    UpgradeDebugInfo(*mod);
    setFunctionAttributes(CPUStr, FeaturesStr, *mod);

    llvm::LLVMTargetMachine &LLVMTM = static_cast<llvm::LLVMTargetMachine&>(*Target);
    llvm::MachineModuleInfoWrapperPass *MMI = new llvm::MachineModuleInfoWrapperPass(&LLVMTM);
    llvm::TargetPassConfig &TPC = *LLVMTM.createPassConfig(PM);

    TPC.setDisableVerify(true);
    PM.add(&TPC);
    PM.add(MMI);


    PM.add(llvm::createGreedyRegisterAllocator());



    bool isModuleValid = !llvm::verifyModule(*mod);


    if (isModuleValid) {
        cout << "Module is valid!\n";
    } else {
        cout << "Module is invalid!\n";
    }

    if (showLLVM) {
        string target_llvm = target_path + ".ll";
        auto output_file = make_unique<llvm::ToolOutputFile>(
            target_llvm, error_msg, llvm::sys::fs::F_None
        );
        auto output_ostream = &output_file->os();
        PM.run(*mod);
        mod->print(*output_ostream, nullptr);
        output_file->keep();
    }

    if(showFinal) {
        auto obj_file_name = target_path + ".o";
        auto obj_file = make_unique<llvm::ToolOutputFile>(
            obj_file_name, error_msg, llvm::sys::fs::F_None
        );

        auto obj_ostream = &obj_file->os();
        //TPC.addISelPasses();
        //TPC.addMachinePasses();
        //TPC.setInitialized();
        LLVMTM.addPassesToEmitFile(PM, *obj_ostream, nullptr, llvm::CGFT_ObjectFile);

        //PM.add(llvm::createFreeMachineFunctionPass());
        PM.run(*mod);
        obj_file->keep();

        auto command_string = string("clang -w --target=riscv64-unknown-elf ") + target_path + ".o -o " + target_path + " -L. -lsysy_io";
        //auto command_string = string("clang -w -v --target=riscv64-unknown-elf ") + target_path + ".o -o " + target_path ;
        system(command_string.c_str());
    }
    cout << "all right" << endl;

    return 0;
}
