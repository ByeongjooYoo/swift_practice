//
//  N진수 게임.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/20.
//

import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var str: [Character] = []
    var number = 0
    var result = ""
    while str.count <= t * m {
        let strNum = String(number, radix: n, uppercase: true)
        strNum.forEach { str.append($0)}
        number += 1
    }
    var i = p - 1
    while result.count < t {
        result += String(str[i])
        i += m
    }
    return result
}
