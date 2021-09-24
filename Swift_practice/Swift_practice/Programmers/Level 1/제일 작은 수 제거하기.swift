//
//  제일 작은 수 제거하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/24.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var array = arr
    array.remove(at: array.firstIndex(of: array.min()!)!)
    if array.count == 0 {
        array.append(-1)
    }
    return array
}
