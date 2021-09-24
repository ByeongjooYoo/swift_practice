//
//  정수 내림차순으로 배치하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/24.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    let num = Array(String(n))
    var numArray: [String] = []
    var str = ""
    for i in num {
        numArray.append(String(i))
    }
    numArray = numArray.sorted(by: >)
    for i in numArray {
        str += i
    }
    return Int64(str)!
}
