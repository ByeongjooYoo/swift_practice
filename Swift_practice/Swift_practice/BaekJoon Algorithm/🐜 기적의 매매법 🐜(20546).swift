//
//  🐜 기적의 매매법 🐜(20546).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/10/27.
//

import Foundation

let money = Int(readLine()!) ?? 0
let array = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }

//준현이 자산
var JMoney = money
var JCount = 0

for i in array {
    JCount += JMoney / i
    JMoney -= (JMoney / i) * i
}
let JResult = JMoney + JCount * (array.last ?? 0)


//성민이의 자산
var SMoney = money
var SCount = 0
var downCount = 0
var upCount = 0

for i in 0 ..< array.count {
    if i - 1 >= 0 {
        
        if array[i - 1] < array[i] {
            downCount = 0
            upCount += 1
        } else if array[i - 1] > array[i] {
            downCount += 1
            upCount = 0
        }
        
        if upCount == 3 {
            upCount -= 1
            SMoney += array[i] * SCount
            SCount = 0
        }
        
        if downCount == 3 {
            downCount -= 1
            SCount += SMoney / array[i]
            SMoney -= (SMoney / array[i]) * array[i]
        }

    }
}
let SResult = SMoney + SCount * (array.last ?? 0)


if JResult < SResult {
    print("TIMING")
} else if JResult > SResult {
    print("BNP")
} else {
    print("SAMESAME")
}

