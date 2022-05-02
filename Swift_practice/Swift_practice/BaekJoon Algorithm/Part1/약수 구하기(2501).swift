//
//  약수 구하기(2501).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/05/02.
//

import Foundation

let input = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let N = input[0]
let K = input[1]
var count = 0
var result = 0
for i in 1 ... N {
    if N % i == 0 {
        count += 1
        if count == K {
            result = i
            break
        }
    }
}
print(result)
