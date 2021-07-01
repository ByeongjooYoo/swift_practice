//
//  7_2908.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let wordArray: [String] = readLine()!.components(separatedBy: " ")
let num1: Int = Int(String(wordArray[0].reversed()))!
let num2: Int = Int(String(wordArray[1].reversed()))!
if num1 > num2{
    print(num1)
}else{
    print(num2)
}
