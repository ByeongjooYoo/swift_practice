//
//  예산.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/03.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let sortD = d.sorted()
    var count = 0
    var budgetSum = 0
    for i in sortD {
        if budgetSum + i <= budget {
            budgetSum += i
            count += 1
        } else {
            break
        }
    }
    return count
}
