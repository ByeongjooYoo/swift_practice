//
//  3_1193.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/07/02.
//

import Foundation

var input: Int = Int(readLine()!)!

var crossCount: Int = 1
var crossSum: Int = 0

while true {
    if input <= crossSum + crossCount{
        if crossCount % 2 == 1{
            print("\(crossCount - (input - crossSum - 1))/\(input - crossSum)")
            break
        }else{
            print("\(input - crossSum)/\(crossCount - (input - crossSum - 1))")
            break
        }
    }else{
        crossSum += crossCount
        crossCount += 1
    }
}
