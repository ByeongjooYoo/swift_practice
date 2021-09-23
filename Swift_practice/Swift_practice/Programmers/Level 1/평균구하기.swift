//
//  평균구하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/23.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    var sum = 0.0
    for i in arr {
        sum += Double(i)
    }
    let result = sum / Double(arr.count)
    return result
}
