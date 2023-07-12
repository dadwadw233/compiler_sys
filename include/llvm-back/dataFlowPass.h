//
// Created by yyh on 7/12/23.
//

#ifndef MYCOMPILER_DATAFLOWPASS_H
#define MYCOMPILER_DATAFLOWPASS_H


#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"

using namespace llvm;

struct MyDataFlowPass : public FunctionPass {
    static char ID;

    MyDataFlowPass() : FunctionPass(ID) {}
    void getAnalysisUsage(AnalysisUsage& AU) const override;
    bool runOnFunction(Function& F) override;
};


static RegisterPass<MyDataFlowPass> X("my-dataflow-pass", "My Data Flow Pass", false, false);



#endif //MYCOMPILER_DATAFLOWPASS_H
