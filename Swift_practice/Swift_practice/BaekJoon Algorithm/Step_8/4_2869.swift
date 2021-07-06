//
//  4_2869.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/07/02.
//

import Foundation

import Foundation

var input: [Int] = readLine()!.components(separatedBy: " ").map{ Int($0)!}
var count: Int = 0
var distance: Int = input[2] - input[1]
var speed: Int = input[0] - input[1]
if distance % speed != 0{
    count = distance/speed + 1
}else{
    count = distance/speed
}
print(count)
