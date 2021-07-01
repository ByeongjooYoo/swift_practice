//
//  9_5622.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let callNum: [String] = Array(readLine()!).map{ String($0)}
var callNumInt: [Int] = []
var callTime: Int = 0

for i in callNum{
    if i.contains("A") || i.contains("B") || i.contains("C"){
        callNumInt.append(2)
    }else if i.contains("D") || i.contains("E") || i.contains("F"){
        callNumInt.append(3)
    }else if i.contains("G") || i.contains("H") || i.contains("I"){
        callNumInt.append(4)
    }else if i.contains("J") || i.contains("K") || i.contains("L"){
        callNumInt.append(5)
    }else if i.contains("M") || i.contains("N") || i.contains("O"){
        callNumInt.append(6)
    }else if i.contains("P") || i.contains("Q") || i.contains("R") || i.contains("S"){
        callNumInt.append(7)
    }else if i.contains("T") || i.contains("U") || i.contains("V"){
        callNumInt.append(8)
    }else if i.contains("W") || i.contains("X") || i.contains("Y") || i.contains("Z"){
        callNumInt.append(9)
    }
}

for i in callNumInt{
    callTime += i + 1
}

print(callTime)
