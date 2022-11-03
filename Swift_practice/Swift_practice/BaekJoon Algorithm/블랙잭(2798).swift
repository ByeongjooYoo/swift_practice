//
//  블랙잭(2798).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/11/03.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
let (N, M) = (input[0], input[1])
let cardNumbers = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
var result = 0

func dfs(_ count: Int, _ sum: Int, _ numbers: [Int]) {
    if count == 3 {
        if sum <= M && result < sum {
            result = sum
        }
        return
    }
    
    for i in 0 ..< N {
        if !numbers.contains(cardNumbers[i]) {
            dfs(count + 1, sum + cardNumbers[i], numbers + [cardNumbers[i]])
        }
    }
}

dfs(0, 0, [])
print(result)
