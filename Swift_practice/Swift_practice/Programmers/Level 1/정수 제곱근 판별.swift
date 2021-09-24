//
//  정수 제곱근 판별.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/24.
//

import Foundation

func solution1(_ n:Int64) -> Int64 {
    var check = Int64(sqrt(Double(n)))
    
    return check * check == n ? (check + 1) * (check + 1) : -1
}

func solution2(_ n:Int64) -> Int64 {
    for i in 1 ... n {
        if i * i > n {
            return -1
        } else if i * i == n{
            return (i + 1) * (i + 1)
        }
    }
    return -1
}
