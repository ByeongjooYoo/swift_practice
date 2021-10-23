//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result: [Int] = []
    for i in left ... right {
        result.append(max(Int(i) % n, Int(i) / n) + 1)
    }
    return result
}

print(solution(3, 2, 5))
