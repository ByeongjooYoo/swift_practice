//
//  큰 수 구성하기(18511).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/11/15.
//

import Foundation

let input1 = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }
let (N, numberOfK) = (input1[0], input1[1])
var K = readLine()!.components(separatedBy: " ").map { Int($0) ?? 0 }.sorted()

var result = 0

func DFS(_ index: Int, _ numbers: [String]) {
    let number = Int(numbers.joined()) ?? 0
    if N >= number {
        result = max(result, number)
    } else {
        return
    }
    
    for i in 0 ..< numberOfK {
        DFS(index + 1, numbers + [String(K[i])])
    }
}

DFS(0, [])

print(result)

