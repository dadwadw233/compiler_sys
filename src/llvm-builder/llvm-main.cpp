#include <iostream>
#include "llvmBuilder.hpp"
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
    string target_path = input_path.substr(0, input_path.size() - 3);
    bool showAst = false;
    bool showLLVM = true;
    bool showFinal = true;

    TreeNodeTopLevel *root;
    extern TreeNodeTopLevel *runParser(const string filename);
    root = runParser(input_path);
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
    llvm::InitializeAllTargets();
    llvm::InitializeAllTargetMCs();
    llvm::InitializeAllAsmParsers();
    llvm::InitializeAllAsmPrinters();

    llvm::PassRegistry *Registry = llvm::PassRegistry::getPassRegistry();
    initializeCore(*Registry);
    initializeCodeGen(*Registry);
    initializeScalarOpts(*Registry);

    llvm::Triple TheTriple;
    TheTriple.setTriple(llvm::sys::getDefaultTargetTriple());
    string Error;
    const llvm::Target *TheTarget = llvm::TargetRegistry::lookupTarget("", TheTriple, Error);

    string CPUStr = getCPUStr(), FeaturesStr = getFeaturesStr();
    CodeGenOpt::Level OLvl = CodeGenOpt::None;
    TargetOptions Options = InitTargetOptionsFromCodeGenFlags();
    unique_ptr<TargetMachine> Target(TheTarget->createTargetMachine(
            TheTriple.getTriple(), CPUStr, FeaturesStr, Options, getRelocModel(), getCodeModel(), OLvl)
        );
    assert(Target);

    legacy::PassManager PM;

    llvm::TargetLibraryInfoImpl TLII(Triple(mod->getTargetTriple()));
    PM.add(new TargetLibraryInfoWrapperPass(TLII));
    mod->setDataLayout(Target->createDataLayout());
    UpgradeDebugInfo(*mod);
    setFunctionAttributes(CPUStr, FeaturesStr, *mod);

    llvm::LLVMTargetMachine &LLVMTM = static_cast<LLVMTargetMachine&>(*Target);
    MachineModuleInfo *MMI = new MachineModuleInfo(&LLVMTM);
    TargetPassConfig &TPC = *LLVMTM.createPassConfig(PM);

    TPC.setDisableVerify(true);
    PM.add(&TPC);
    PM.add(MMI);

    if (showLLVM) {
        string target_llvm = target_path + ".ll";
        auto output_file = llvm::make_unique<llvm::ToolOutputFile>(
            target_llvm, error_msg, llvm::sys::fs::F_None
        );
        auto output_ostream = &output_file->os();
        PM.run(*mod);
        mod->print(*output_ostream, nullptr);
        output_file->keep();
    }

    if(showFinal) {
        auto obj_file_name = target_path + ".o";
        auto obj_file = llvm::make_unique<llvm::ToolOutputFile>(
            obj_file_name, error_msg, llvm::sys::fs::F_None
        );

        auto obj_ostream = &obj_file->os();
        TPC.addISelPasses();
        TPC.addMachinePasses();
        TPC.setInitialized();
        LLVMTM.addAsmPrinter(
            PM, 
            *obj_ostream, 
            nullptr, 
            TargetMachine::CGFT_ObjectFile, 
            MMI->getContext()
        );
        PM.add(createFreeMachineFunctionPass());
        PM.run(*mod);
        obj_file->keep();

        auto command_string = string("clang -w ") + target_path + ".o -o " + target_path + " -L. -lsysy_io";
        system(command_string.c_str());
    }
    cout << "all right" << endl;
    return 0;
}
