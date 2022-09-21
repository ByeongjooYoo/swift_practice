//
//  수들의 합(1789).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/09/21.
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
