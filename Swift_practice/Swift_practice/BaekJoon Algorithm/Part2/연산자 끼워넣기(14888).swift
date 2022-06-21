//
//  연산자 끼워넣기(14888).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/21.
//

import Foundation

let n = Int(readLine() ?? "") ?? 0
let numbers = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let operatorNumbers = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let operators = convertOperator(operatorNumbers)
var check = Array(repeating: 0, count: operators.count)
var (maxAns, minAns) = (Int.min, Int.max)

func DFS(_ sum: Int, _ depth: Int) {
    if depth == n {
        maxAns = max(maxAns, sum)
        minAns = min(minAns,sum)
        return
    }
    
    for i in 0 ..< operators.count {
        if check[i] == 0 {
            check[i] = 1
            DFS(calculate(sum, numbers[depth], operators[i]), depth + 1)
            check[i] = 0
        }
    }
}

DFS(numbers[0], 1)
print(maxAns)
print(minAns)

func calculate(_ number1: Int,_ number2: Int, _ o: String) -> Int {
    var result = number1
    switch o {
    case "+":
        result += number2
    case "-":
        result -= number2
    case "*":
        result *= number2
    case "/":

        result /= number2
    default:
        break
    }
    return result
}

func convertOperator(_ operators: [Int]) -> [String] {
    var result: [String] = []
    for i in 0 ..< operators.count {
        for _ in 0 ..< operators[i] {
            switch i {
            case 0:
                result.append("+")
            case 1:
                result.append("-")
            case 2:
                result.append("*")
            case 3:
                result.append("/")
            default:
                break
            }
            
        }
    }
    return result
}
