//
//  행열의 곱셈.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/08.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for i in 0 ..< arr1.count {
        result.append([])
        for j in 0 ..< arr2[0].count {
            var sum = 0
            for k in 0 ..< arr2.count {
                sum += arr1[i][k] * arr2[k][j]
            }
            result[i].append(sum)
        }
    }
    return result
}
