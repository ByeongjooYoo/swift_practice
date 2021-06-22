//
//  9_10869.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()

if let input = input{
    var array = input.components(separatedBy: " ")
    let sum = Int(array[0])! + Int(array[1])!
    let dis = Int(array[0])! - Int(array[1])!
    let mul = Int(array[0])! * Int(array[1])!
    var Div = Int(array[0])! / Int(array[1])!
    let mod = Int(array[0])! % Int(array[1])!
    
    print(sum)
    print(dis)
    print(mul)
    print(Div)
    print(mod)
}
