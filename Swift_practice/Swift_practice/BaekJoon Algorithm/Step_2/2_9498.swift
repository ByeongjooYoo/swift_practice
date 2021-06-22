//
//  2_9498.swift
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
if num >= 90 {
    print("A")
}else if num >= 80{
    print("B")
}else if num >= 70{
    print("C")
}else if num >= 60{
    print("D")
}else{
    print("F")
}
