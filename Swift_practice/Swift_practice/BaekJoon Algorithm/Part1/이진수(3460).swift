//
//  이진수(3460).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/05/03.
//

import Foundation

let T = Int(readLine() ?? "") ?? -1
for _ in 0 ..< T {
    let n = Int(readLine() ?? "") ?? -1
    let binary = String(n, radix: 2).reversed().map { String($0)}
    var one: [Int] = []
    for j in 0 ..< binary.count {
        if binary[j] == "1" {
            one.append(j)
        }
    }
    print(one.map { String($0)}.joined(separator: " "))
