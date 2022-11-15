//
//  DNA(1969).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/11/15.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
let (N, M) = (input[0], input[1])
var DNAs: [[String]] = []

var result: [String] = []
var resultHD = 0

for _ in 0 ..< N {
    let input = Array(readLine()!).map { String($0) }
    DNAs.append(input)
}


for i in 0 ..< M {
    var dic: [String: Int] = [:]
    for j in 0 ..< N {
        dic[DNAs[j][i]] = dic[DNAs[j][i]] == nil ?  1 : dic[DNAs[j][i]]! + 1
    }
    
    let HD = dic.max(by: {
        if $0.value < $1.value {
            return true
        } else if $0.value == $1.value {
            if $0.key > $1.key {
                return true
            }
        }
        return false
    })!
    result.append(HD.key)
    resultHD += N - HD.value
}

print(result.joined())
print(resultHD)


