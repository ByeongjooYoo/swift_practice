//
//  10_2439.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()
var num = 0
var str: String = ""
if let input = input{
    num = Int(input)!
}
for i in 1...num{
    for j in 0..<num-i{
        print(" ", terminator: "")
    }
    str += "*"
    print(str)
}
