//
//  3_2753.swift
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
if ((num % 4 == 0) && (num%100 != 0)) || (num%400 == 0) {
    print("1")
}else{
    print("0")
}
