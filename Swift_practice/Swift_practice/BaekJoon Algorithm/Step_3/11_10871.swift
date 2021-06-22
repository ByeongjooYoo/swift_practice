//
//  11_10871.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()
var N = 0, X = 0
if let input = input{
    var array = input.components(separatedBy: " ")
    N = Int(array[0])!
    X = Int(array[1])!
}

let input_array = readLine()
var array_num: [Int] = []

if let input_array = input_array{
    var array = input_array.components(separatedBy: " ")
    for i in 0..<N{
        if(X > Int(array[i])!){
            print("\(Int(array[i])!)", terminator: " ")
        }
    }
}
print()
