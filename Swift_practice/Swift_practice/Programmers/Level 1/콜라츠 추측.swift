//
//  콜라츠 추측.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/23.
//

import Foundation

func solution(_ num:Int) -> Int {
    var count = 0
    var number = num
    while number != 1 {
        if count >= 500 {
            return -1
        } else if number % 2 == 0 {
            number /= 2
        } else {
            number = number * 3 + 1
        }
        count += 1
    }
    return count
}
