//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation
func solution(_ n:Int64) -> Int64 {
    let num = Array(String(n))
    var numArray: [String] = []
    var str = ""
    for i in num {
        numArray.append(String(i))
    }
    print(numArray)
    numArray = numArray.sorted(by: >)
    print(numArray)
    for i in numArray {
        str += i
        print(i)
    }
    return Int64(str)!
}

print(solution(118372))
