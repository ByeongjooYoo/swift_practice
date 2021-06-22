//
//  8_1008.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()

if let input = input{
    var array = input.components(separatedBy: " ")
    var sum: Double = Double(array[0])! / Double(array[1])!
    print(sum)
}
