//
//  6_10998.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()

if let input = input{
    var array = input.components(separatedBy: " ")
    let sum = Int(array[0])! - Int(array[1])!
    print(sum)
}
