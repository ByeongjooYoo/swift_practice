//
//  괄호의 값(2504).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/22.
//

import Foundation

let input = Array(readLine() ?? "").map { String($0) }
var stack = Array<String>()
var flag = true
var temp = 1
var result = 0
for i in 0 ..< input.count {
    switch input[i] {
    case "(":
        stack.append(input[i])
        temp *= 2
    case "[":
        stack.append(input[i])
        temp *= 3
    case ")":
        if stack.isEmpty {
            flag = false
            break
        }
        if stack.last ?? "" == "(" {
            stack.removeLast()
            if input[i-1] == "(" {
                result += temp
            }
            temp /= 2
        }
    case "]":
        if stack.isEmpty {
            flag = false
            break
        }
        if stack.last ?? "" == "[" {
            stack.removeLast()
            if input[i-1] == "[" {
                result += temp
            }
            temp /= 3
        }
    default:
        break
    }
}

if stack.isEmpty && flag {
    print(result)
} else{
    print(0)
}
