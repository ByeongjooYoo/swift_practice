//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = []
    var count = 0
    let array = Array(s).map { String($0) }
    for i in 0 ..< array.count {
        if i == 0 {
            count += 1
            continue
        }
        if array[i] == array[i - 1] {
            count += 1
        } else {
            result.append(count)
            count = 1
        }
        if i == array.count - 1 {
            result.append(count)
        }
    }
    if array[0] == array[array.count - 1] {
        let num = result.first! + result.last!
        print(num)
        result.removeFirst()
        result.removeLast()
        result.append(num)
    }
    return result.sorted()
}


print(solution("aabbcddaada"))
