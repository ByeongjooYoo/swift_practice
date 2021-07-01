//
//  4_2675.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let testNum: Int = Int(readLine()!)!
var resultArray: [String] = []
for i in 0 ..< testNum{
    var testCase = readLine()!.components(separatedBy: " ")
    let R: Int = Int(testCase[0])!
    testCase = Array(testCase[1]).map{ String($0) }
    var temp: String = ""
    for i in testCase{
        for j in 0 ..< R{
            temp += i
        }
    }
    resultArray.append(temp)
}

for i in resultArray{
    print(i)
}
