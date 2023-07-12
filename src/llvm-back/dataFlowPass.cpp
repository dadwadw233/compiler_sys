//
// Created by yyh on 7/12/23.
//

#include <llvm/Analysis/AliasAnalysis.h>
#include <iostream>
#include "dataFlowPass.h"
std::string getExpressionAsString(llvm::Instruction* instruction) {
    std::string expression;

    // 获取指令的操作码
    auto opcode = instruction->getOpcode();
    expression += llvm::Instruction::getOpcodeName(opcode);
    if(expression == "alloca"){
        return "Wrong";
    }
    // 获取指令的操作数
    for (unsigned i = 0; i < instruction->getNumOperands(); ++i) {
        llvm::Value* operand = instruction->getOperand(i);
        llvm::Constant* constantOperand = llvm::dyn_cast<llvm::Constant>(operand);

        // 如果操作数是常量，则将其值作为字符串添加到表达式中
        if (constantOperand) {
            std::string operandStr;
            llvm::raw_string_ostream rso(operandStr);
            constantOperand->print(rso);
            expression += rso.str();
        }
            // 如果操作数是变量，则将其名称作为字符串添加到表达式中
        else if (llvm::isa<llvm::Instruction>(operand)) {
            llvm::Instruction* operandInst = llvm::cast<llvm::Instruction>(operand);
            expression += operandInst->getName();
        }
    }

    return expression;
}
bool MyDataFlowPass::runOnFunction(llvm::Function &F) {
    auto& AA = getAnalysis<llvm::AAResultsWrapperPass>().getAAResults();
    auto& LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
    auto& SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();
    //活跃变量分析
    // 构建数据流分析的初始状态
    std::map<Value*, bool> liveVariables; // 存储变量是否活跃的状态

    // 初始化初始状态，假设所有变量都是活跃的
    for (Argument& arg : F.args()) {
        liveVariables[&arg] = true;
    }
    for (BasicBlock& BB : F) {
        for (Instruction& I : BB) {
            if (I.getType()->isVoidTy()) {
                // 如果指令的返回值是 void 类型，不需要考虑该指令的活跃变量
                continue;
            }
            liveVariables[&I] = true;
        }
    }

    // 进行迭代计算，直到收敛
    bool changed = true;
    while (changed) {
        changed = false;

        // 倒序遍历基本块
        for (BasicBlock& BB : llvm::reverse(F)) {
            // 遍历基本块内的指令
            for (Instruction& I : llvm::reverse(BB)) {
                // 检查当前指令是否有使用到的活跃变量
                bool hasLiveUses = false;
                for (Use& U : I.operands()) {
                    if (liveVariables[U]) {
                        hasLiveUses = true;
                        break;
                    }
                }

                // 如果当前指令没有使用到的活跃变量，将其标记为非活跃
                if (!hasLiveUses) {
                    liveVariables[&I] = false;
                    changed = true;
                }
            }
        }
    }

    // 打印活跃变量信息
    for (BasicBlock& BB : F) {
        for (Instruction& I : BB) {
            if (liveVariables[&I]) {
                errs() << "Instruction: " << I << " is live\n";
            } else {
                errs() << "Instruction: " << I << " is dead\n";
            }
        }
    }

    for (BasicBlock& BB : F) {
        std::map<std::string, Value*> expressionMap;
        std::vector<Instruction*> toRemove;
        for (Instruction& I : BB) {
            std::string expression = getExpressionAsString(&I);
            std::cout<<expression<<std::endl;
            if (expressionMap.count(expression) > 0) {
                // 如果表达式已经存在于表达式列表中，则删除当前指令
                toRemove.push_back(&I);
            } else {
                // 将当前指令添加到表达式列表中
                expressionMap[expression] = &I;
            }
        }
        // 删除公共表达式
        for (Instruction* I : toRemove) {
            I->eraseFromParent();
        }
    }

    return true;
}
void MyDataFlowPass::getAnalysisUsage(llvm::AnalysisUsage &AU) const {
    AU.addRequired<AAResultsWrapperPass>();
    AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<ScalarEvolutionWrapperPass>();
    AU.setPreservesAll();
}