//
//  6_2775.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/07/02.
//

import Foundation

let testCase: Int = Int(readLine()!)!
var result: [Int] = []
for i in 0 ..< testCase{
    let floor = Int(readLine()!)!
    let n = Int(readLine()!)!
    var apartment: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: floor+1)
    for k in 0 ... floor{
        for j in 0 ..< n{
            if k == 0 {
                apartment[k][j] = j + 1
            }else if j == 0{
                apartment[k][j] = 1
            }else{
                apartment[k][j] = apartment[k-1][j] + apartment[k][j-1]
            }
        }
    }
    result.append(apartment[floor][n-1])
}
for i in result{
    print(i)
}

