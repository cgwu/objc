//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by test5d on 15/9/22.
//  Copyright © 2015年 test5d. All rights reserved.
//

import Foundation

class CalculatorBrain {
    /*
    在swift中，枚举类型是第一等(first-class)类型，它采用了很多传统上只被类所支持的特征，如计算型属性(computed properties), 
    用于提供关于枚举当前值附加信息，实例方法(instance methods), 用于提供和枚举所代表的值相关联的功能，可以定义构造器(initializer),
    也可以遵守(protocols)来提供标准的功能。
    “关联值－Associated Values“：可以定义Swift枚举存储任何类型的关联值，如果需要的话，每个成员的数据类型可以是各不相同的，
    这种特性和其它语言中的可辨识联合(discriminated unions), 标签联合(tagged unions), 或者变体(variants)相似。
    */
    private enum Op : CustomStringConvertible {
        case Operand(Double)
        case UnaryOperation(String, Double -> Double)
        case BinaryOperation(String, (Double, Double) -> Double)
        
        // computed property
        var description: String {
            get{
                switch self {
                case .Operand(let operand):
                    return "\(operand)"
                case .UnaryOperation(let symbol, _):
                    return symbol
                case .BinaryOperation(let symbol, _):
                    return symbol
                }
            }
        }
    }
    
    private var opStack = [Op]()
    
    private var knownOps = [String:Op]() //same as: Dictionary<String, Op>()
    
    init() {
        func learnOp(op: Op) {
            knownOps[op.description] = op
        }
        
        learnOp(Op.BinaryOperation("+", +))
        learnOp(Op.BinaryOperation("-") { $1 - $0 })
        learnOp(Op.BinaryOperation("*", *))
        learnOp(Op.BinaryOperation("/") { $1 / $0 })
        learnOp(Op.UnaryOperation("√", sqrt))
        
//        knownOps["+"] = Op.BinaryOperation("+", +)
//        knownOps["-"] = Op.BinaryOperation("-") { $1 - $0 }
//        knownOps["*"] = Op.BinaryOperation("*", *)
//        knownOps["/"] = Op.BinaryOperation("/") { $1 / $0 }
//        knownOps["√"] = Op.UnaryOperation("√", sqrt)
    }
    
    //Swift 数组,字典 是传值的。
    private func evaluate(ops: [Op]) -> (result: Double?, remainingOps: [Op]) {   //函数返回一个命名的元组
        if !ops.isEmpty {
            var remainders = ops    //除栈顶后剩下的栈
            let op = remainders.removeLast()    //栈顶的元素
            switch op {
                
            case .Operand(let operand):     //操作数
                return (operand, remainders)
                
            case .UnaryOperation(_, let operation):  //一元操作符
                let operandEvaluation = evaluate(remainders)
                if let operand = operandEvaluation.result {
                    return (operation(operand), operandEvaluation.remainingOps)
                }
                
            case .BinaryOperation(_, let operation): //二元操作符
                let op1Evaluation = evaluate(remainders)
                if let operand1 = op1Evaluation.result {
                    let op2Evaluation = evaluate(op1Evaluation.remainingOps)
                    if let operand2 = op2Evaluation.result {
                        return (operation(operand1, operand2), op2Evaluation.remainingOps)
                    }
                }
            }
        }
        return (nil,ops)
    }
    
    func evaluate() -> Double? {
        let (result, remainder) = evaluate(opStack)
        NSLog("\(opStack) = \(result) with \(remainder) left over")
        return result
    }
    
    func pushOperand(operand: Double) -> Double? {
        opStack.append(Op.Operand(operand))
        return evaluate()
    }
    
    func performOperation(symbol: String) -> Double? {
        if let operation = knownOps[symbol] {
            opStack.append(operation)
        }
        return evaluate()
    }
    
}



