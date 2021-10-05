//
//  내적.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/05.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sum = 0
    for i in 0 ..< a.count {
        sum += a[i] * b[i]
    }
    return sum
}
