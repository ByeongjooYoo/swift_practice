//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

func solution(_ citations:[Int]) -> Int {
    let array = citations.sorted(by: <)
    var result = 0
    let n = array.count
    for i in 0 ..< n {
        let hIndex = n - i
        if array[i] >= hIndex{
            result = hIndex
            break
        }
    }
    return result
}


let testcase1 = [3, 0, 6, 1, 5]
let testcase2 = [0]
print(solution(testcase2))
