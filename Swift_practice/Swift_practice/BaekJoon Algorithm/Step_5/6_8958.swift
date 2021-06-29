//
//  6_8958.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let num: Int = Int(readLine()!)!
var result_array: [Int] = []
for i in 0..<num{
    let str = readLine()!.components(separatedBy: "X")
    var result: Int = 0
    for j in str{
        for k in 0..<j.count{
            result += k+1
        }
    }
    result_array.append(result)
}

for i in result_array{
    print(i)
}
