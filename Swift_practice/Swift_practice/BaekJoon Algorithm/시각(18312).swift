//
//  시각(18312).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/11/08.
//

import Foundation

struct Time: Equatable {
    var h: Int
    var m: Int
    var s: Int
    
    var toString: String {
        let h = h < 10 ? "0\(h)": "\(h)"
        let m = m < 10 ? "0\(m)": "\(m)"
        let s = s < 10 ? "0\(s)": "\(s)"
        
        return "\(h)\(m)\(s)"
    }
}

let input = readLine()!.components(separatedBy: " ").map{ Int($0) ?? 0 }
let (N, M) = (input[0], input [1])
let endTime = Time(h: N, m: 59, s: 59)
var startTime = Time(h: 0, m: 0, s: 0)
var count = endTime.toString.contains(String(M)) ? 1 : 0

while startTime != endTime {
    if startTime.toString.contains(String(M)) {
        count += 1
    }
    if startTime.s + 1 < 60 {
        startTime.s += 1
    } else {
        startTime.s = 0
        startTime.m += 1
    }
    
    if startTime.m == 60 {
        startTime.m = 0
        startTime.h += 1
    }
    
}

print(count)

