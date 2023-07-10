#ifndef SYSYC_llvmBuilder_HPP
#define SYSYC_llvmBuilder_HPP

#include <iostream>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Verifier.h>
#include "ast.hpp"
#include <map>

using namespace std;

class Scope {
private:
    vector<map<string, llvm::Value *> > inner;
    vector<map<string, vector<llvm::Value *> > > array_param;
public:
    // 变量区域
    void enter() {
        inner.push_back({});
        array_param.push_back({});
    }
    void exit() {
        inner.pop_back();
        array_param.pop_back();
    }

    bool in_global() {
        return inner.size() == 1;
    }

    // 向scope添加变量
    // true -> 添加成功；  false -> 添加失败已经存在
    bool push(string name, llvm::Value *val) {
        auto result = inner[inner.size() - 1].insert({name, val});
        return result.second;//first指向键，second指向值
    }
    bool push_params(string name, llvm::Value *val, vector<llvm::Value *> params) {
        auto result = array_param[array_param.size() - 1].insert({name, params});
        return result.second;
    }

    // 查找变量name对应的value
    llvm::Value* find(string name) {
        for (auto s = inner.rbegin(); s!= inner.rend();s++) {
            auto iter = s->find(name);
            if (iter != s->end()) {
                return iter->second;
            }
        }
        return nullptr;
    }
    llvm::Value* find_params(string name, vector<llvm::Value *> &params) {
        for (auto s = array_param.rbegin(); s!= array_param.rend();s++) {
            auto iter = s->find(name);
            if (iter != s->end()) {
                params.assign(iter->second.begin(),iter->second.end());
                return iter->second[0];
            }
        }
        return nullptr;
    }
};


// 继承TreeVisit进行方法重写
class LLVMBuilder: public TreeVisit {
private:
    // 全局状态的容器
    llvm::LLVMContext context;

    // 变量检查
    Scope scope;
    // 模块的声明
    unique_ptr<llvm::Module> module;
    // 使用visit遍历语法树生成LLVMIR
    virtual void visit(TreeNodeConstExp &) ;
    virtual void visit(TreeNodeTopLevel &) ;
    virtual void visit(TreeNodeConstDecl &) ;
    virtual void visit(TreeNodeConstDef &) ;
    virtual void visit(TreeNodeConstInitVal &) ;
    virtual void visit(TreeNodeVarDecl &) ;
    virtual void visit(TreeNodeVarDef &) ;
    virtual void visit(TreeNodeInitVal &) ;
    virtual void visit(TreeNodeFuncDef &) ;
    virtual void visit(TreeNodeFuncFParam &) ;
    virtual void visit(TreeNodeBlock &) ;
    virtual void visit(TreeNodeBreakStmt &) ;
    virtual void visit(TreeNodeContinueStmt &) ;
    virtual void visit(TreeNodeAssignStmt &) ;
    virtual void visit(TreeNodeIfStmt &) ;
    virtual void visit(TreeNodeWhileStmt &) ;
    virtual void visit(TreeNodeReturnStmt &) ;
    virtual void visit(TreeNodeLVal &) ;
    virtual void visit(TreeNodePrimaryExp &) ;
    virtual void visit(TreeNodeNumber &) ;
    virtual void visit(TreeNodeUnaryExp &) ;
    virtual void visit(TreeNodeCallee &) ;
    virtual void visit(TreeNodeMulExp &) ;
    virtual void visit(TreeNodeAddExp &) ;
    virtual void visit(TreeNodeRelExp &) ;
    virtual void visit(TreeNodeEqExp &) ;
    virtual void visit(TreeNodeLAndExp &) ;
    virtual void visit(TreeNodeLOrExp &) ;
public:
    // 调用IRBuilder的API
    llvm::IRBuilder<> builder;
    // 初始化添加库函数
    LLVMBuilder(): builder(context) {
        module = std::make_unique<llvm::Module>("sysyc", context);
        auto TyVoid = llvm::Type::getVoidTy(context);
        auto TyInt64 = llvm::Type::getInt64Ty(context);
        auto TyPtr = llvm::Type::getInt64PtrTy(context);
        
        auto getint_type = llvm::FunctionType::get(TyInt64, false);
        auto getint_fun =
            llvm::Function::Create(
                getint_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,//外链接：全局的
                "getint",//Twine
                module.get());

        auto getch_fun =
            llvm::Function::Create(
                getint_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "getch",
                module.get());

        vector<llvm::Type *> putint_params;
        putint_params.push_back(TyInt64);
        auto putint_type = llvm::FunctionType::get(TyVoid,putint_params,false);//返回值，参数列表，是否可变长
        
        auto putint_fun =
            llvm::Function::Create(
                putint_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "putint",
                module.get());
        
        auto putch_fun =
            llvm::Function::Create(
                putint_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "putch",
                module.get());

        vector<llvm::Type *> getarray_params;
        getarray_params.push_back(TyPtr);
        auto getarray_type = llvm::FunctionType::get(TyInt64,getarray_params,false);
        
        auto getarray_fun =
            llvm::Function::Create(
                getarray_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "getarray",
                module.get());
        
        vector<llvm::Type *> putarray_params;
        putarray_params.push_back(TyInt64);
        putarray_params.push_back(TyPtr);
        auto putarray_type = llvm::FunctionType::get(TyInt64,putarray_params,false);
        
        auto putarray_fun =
            llvm::Function::Create(
                putarray_type,
                llvm::GlobalValue::LinkageTypes::ExternalLinkage,
                "putarray",
                module.get());

        scope.enter();
        scope.push("getint", getint_fun);
        scope.push("getch", getch_fun);
        scope.push("putint", putint_fun);
        scope.push("putch", putch_fun);
        scope.push("getarray", getarray_fun);
        scope.push("putarray", putarray_fun);
    }

    unique_ptr<llvm::Module> build() {
        return move(module);
    }
};
#endif