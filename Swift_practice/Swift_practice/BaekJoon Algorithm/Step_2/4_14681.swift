//
//  4_14681.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input_x = readLine()
let input_y = readLine()

var x = 0
var y = 0
if let input_x = input_x{
    x = Int(input_x)!
}

if let input_y = input_y{
    y = Int(input_y)!
}

if x > 0{
    if y > 0{
        print("1")
    }else{
        print("4")
    }
}else {
    if y > 0{
        print("2")
    }else{
        print("3")
    }
}
