//
//  n^2 배열 자르기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/23.
//

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result: [Int] = []
    for i in left ... right {
        result.append(max(Int(i) % n, Int(i) / n) + 1)
    }
    return result
}
