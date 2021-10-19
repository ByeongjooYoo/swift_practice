//
//  최소값 만들기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/19.
//

import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    var arrayA = A.sorted(by: <)
    var arrayB = B.sorted(by: >)
    var ans = 0
    while arrayA.count > 0 {
        ans += arrayA.first! * arrayB.first!
        arrayA.remove(at: arrayA.startIndex)
        arrayB.remove(at: arrayB.startIndex)
    }
    return ans
}
