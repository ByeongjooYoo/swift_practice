//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var str = ""
    var number = 0
    var result = ""
    while str.count <= t * m {
        str += String(number, radix: n)
        number += 1
    }
    var i = p - 1
    while result.count < t {
        result += String(str[str.index(str.startIndex, offsetBy: i)])
        i += m
    }
    return result.uppercased()
}

print(solution(16, 16, 2, 1))
