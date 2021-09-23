//
//  직사각형 별찍기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/23.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])
var result = ""
for i in 0 ..< b {
    for j in 0 ..< a {
        result += "*"
    }
    result += "\n"
}
print(result)
