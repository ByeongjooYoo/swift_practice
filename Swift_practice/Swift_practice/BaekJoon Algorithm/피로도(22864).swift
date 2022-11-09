//
//  피로도(22864).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/11/08.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int($0) ?? 0 }
let (A, B, C, M) = (input[0], input[1], input[2], input[3])

var fatigue = 0
var result = 0

for i in 1 ..< 25 {
    if fatigue + A <= M {
        fatigue += A
        result += B
    } else {
        fatigue -= C
        if fatigue < 0 {
            fatigue = 0
        }
    }
}

print(result)

