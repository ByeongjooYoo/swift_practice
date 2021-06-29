//
//  7_4344.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let testCase: Int = Int(readLine()!)!
var resultSet: [Double] = []

for i in 0..<testCase{
    let input =  readLine()!.components(separatedBy: " ").map{ Int($0)! }
    var sum: Int = 0
    var count: Int = 0
    for j in 1 ... input[0]{
        sum += input[j]
    }
    let average: Double = Double(sum) / Double(input[0])
    for j in 1 ... input[0]{
        if Double(input[j]) > average{
            count += 1
        }
    }
    resultSet.append(Double(count) / Double(input[0]))
}
for i in 0..<resultSet.count{
    print(String(format: "%.3f", resultSet[i] * 100) + "%")
}
