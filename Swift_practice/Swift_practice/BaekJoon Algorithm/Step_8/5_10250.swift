//
//  5_10250.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/07/02.
//

import Foundation

import Foundation

let testCase: Int = Int(readLine()!)!
var result: [Int] = []
for i in 0 ..< testCase{
    var input: [Int] = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    if input[2] % input[0] == 0{
        result.append(input[0] * 100 + (input[2] / input[0]))
    }else{
        result.append(((input[2] % input[0])*100) + ((input[2] / input[0])+1))

    }
}
for i in result{
    print(i)
}

