//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

let input = Int(readLine()!) ?? 0
var result = 0
var sum = 0
var i = 1

while(true){
    sum += i
    result += 1
    i += 1
    if sum == input {break}
    else if sum > input{
        result -= 1
        break
    }
}

print(result)
