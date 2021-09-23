//
//  x만큼 간격이 있는 n개의 숫자.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/23.
//

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
    var number: Int64 = 0 + Int64(x)
    for _ in 0 ..< n {
        result.append(number)
        number += Int64(x)
    }
    return result
}
