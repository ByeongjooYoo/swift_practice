//
//  2_4673.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

func calculateConstructor(num: Int) -> Int{
    var constructorNum: Int = num
    var array: [Int] = Array(String(constructorNum)).map{ Int(String($0))! }
    for i in array{
        constructorNum += i
    }
    return constructorNum
}

var selfNum: [Int] = Array(repeating: 0, count: 10001)

for i in 0..<selfNum.count{
    let num = calculateConstructor(num: i+1)
    if num < 10001{
        selfNum[num] = 1
    }
    
}

for i in 1..<selfNum.count{
    if selfNum[i] == 0{
        print(i)
    }
}

