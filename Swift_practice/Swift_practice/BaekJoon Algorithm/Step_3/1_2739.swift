//
//  1_2739.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()

var num = 0

if let input = input{
    num = Int(input)!
}

for i in 1...9{
    print("\(num) * \(i) = \(num*i)")
}
