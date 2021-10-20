//
//  다음 큰 숫자.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/20.
//

import Foundation

func solution(_ n:Int) -> Int {
    var answer = n
    var countN = countOne(n)
    var countAnswer = 0
    
    while countAnswer != countN {
        answer += 1
        countAnswer = countOne(answer)
    }
    return answer
}

func countOne(_ n: Int) -> Int {
    var result = 0
    let strN = String(n, radix: 2)
    for c in strN {
        if c == "1" {
            result += 1
        }
    }
    return result
}
