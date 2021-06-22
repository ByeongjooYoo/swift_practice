//
//  1_1330.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()

if let input = input{
    var array = input.components(separatedBy: " ")
    if Int(array[0])! > Int(array[1])!{
        print(">")
    } else if Int(array[0])! < Int(array[1])!{
        print("<")
    } else{
        print("==")
    }
}
