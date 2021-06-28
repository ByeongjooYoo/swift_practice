//
//  1_10952.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

var input: [String] = []
var sum: Int = 0
repeat{
    if sum != 0{
        print(sum)
    }
    input = readLine()!.components(separatedBy: " ")
    sum = Int(input[0])! + Int(input[1])!
    
}while sum != 0
