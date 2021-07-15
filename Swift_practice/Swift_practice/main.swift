//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

var input: [String] = readLine()!.components(separatedBy: " ")
var firstNum: [Int] = Array(input[0]).map{ Int(String($0))!}.reversed()
var secondNum: [Int] = Array(input[1]).map{ Int(String($0))!}.reversed()
var resultNum: [Int] = []
var tempNum: [Int] = []
var temp: Bool = false
var index: Int = 0

if firstNum.count > secondNum.count{
    index = secondNum.count
}else{
    index = firstNum.count
}

for i in 0 ..< index{
    if firstNum[i] + secondNum[i] >= 10{
        resultNum.append((firstNum[i] + secondNum[i]) % 10 )
        tempNum.append(1)
    }else{
        resultNum.append(firstNum[i] + secondNum[i])
        tempNum.append(0)
    }
}

for i in 0 ..< index{
    if i+1 == index{
        resultNum.append(1)
    }else{
        resultNum[i+1] += tempNum[i]
    }
}

resultNum = resultNum.reversed()
for i in resultNum{
    print(i, terminator: "")
}
print()
