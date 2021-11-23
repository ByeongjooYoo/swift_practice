//
//  기능개발.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/11/23.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var queue: [Int] = []
    var result: [Int] = []
    for i in 0 ..< progresses.count {
        var day = (100 - progresses[i]) % speeds[i] == 0 ? (100 - progresses[i]) / speeds[i] : (100 - progresses[i]) / speeds[i] + 1
        queue.append(day)
    }
    var max = 0
    for i in queue {
        if max < i {
            max = i
            result.append(1)
        } else {
            var last = result.popLast()!
            last += 1
            result.append(last)
        }
    }
    return result
}
