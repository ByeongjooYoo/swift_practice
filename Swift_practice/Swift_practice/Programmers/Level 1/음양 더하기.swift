//
//  음양 더하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/06.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    for i in 0 ..< absolutes.count {
        if signs[i] {
            result += absolutes[i]
        } else {
            result += -absolutes[i]
        }
    }
    return result
}


