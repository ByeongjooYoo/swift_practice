//
//  치킨 배달(15686).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/07/01.
//

import Foundation

let input = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let (N, M) = (input[0], input[1])
var matrix = Array<Array<Int>>()
var homes = Array<(Int,Int)>()
var chickenStore = Array<(Int,Int)>()

// input logic
for i in 0 ..< N {
    let line = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
    
    for j in 0 ..< line.count {
        if line[j] == 1 {
            homes.append((i, j))
        } else if line[j] == 2 {
            chickenStore.append((i, j))
        }
    }
    matrix.append(line)
}

var combination = Array(repeating: 0, count: M)
var result = Int.max
func DFS(_ index: Int, _ number: Int) {
    if index == M {
        var sum = 0
        for i in 0 ..< homes.count {
            let x1 = homes[i].0
            let y1 = homes[i].1
            var minDistance = Int.max
            for j in combination {
                let x2 = chickenStore[j].0
                let y2 = chickenStore[j].1
                let distance = abs(x1 - x2) + abs(y1 - y2)
                minDistance = min(distance, minDistance)
            }
            sum += minDistance
        }
        result = min(result, sum)
        return
    }
    
    for i in number ..< chickenStore.count {
        combination[index] = i
        DFS(index + 1, i + 1)
    }
}

DFS(0, 0)
print(result)
