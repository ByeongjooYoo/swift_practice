//
//  5_2884.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()

var hour = 0
var minute = 0
if let input = input{
    var array = input.components(separatedBy: " ")
    hour = Int(array[0])!
    minute  = Int(array[1])!
}

if minute < 45 {
    if hour == 0 {
        hour = 23
    }else{
        hour -= 1
    }
    minute = 60 - (45 - minute)
}else{
    minute -= 45
}
print("\(hour) \(minute)")
