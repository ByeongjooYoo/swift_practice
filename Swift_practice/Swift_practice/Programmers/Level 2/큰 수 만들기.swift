//
//  큰 수 만들기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/11/05.
//

import Foundation

func solution(_ number:String, _ k:Int) -> String {
    let numbers = Array(number).map { String($0)}
    var stack: [String] = []
    var delete = 0
    var index = 0
    
    while delete < k && index < numbers.count {
        guard let last = stack.last else {
            stack.append(numbers[index])
            index += 1
            continue
        }
        
        if Int(last)! < Int(numbers[index])! {
            stack.removeLast()
            delete += 1
            continue
        }
        
        stack.append(numbers[index])
        index += 1
    }
    
    if delete >= k {
        stack.append(contentsOf: numbers[index...])
    }
    
    if index >= numbers.count {
        return stack[0 ..< numbers.count - k].joined(separator: "")
    }
    return stack.joined(separator: "")
}
