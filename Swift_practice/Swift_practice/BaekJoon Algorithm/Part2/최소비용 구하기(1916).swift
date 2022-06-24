//
//  최소비용 구하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/24.
//

import Foundation

let N = Int(readLine() ?? "") ?? 0
let M = Int(readLine() ?? "") ?? 0
var graph = [[(end: Int, value: Int)]](repeating: [], count: N)

for _ in 0 ..< M {
    let line = readLine()!.split(separator: " ").map { Int(String($0))! }
    graph[line[0] - 1].append((line[1] - 1, line[2]))
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (start, end) = (input[0], input[1])

var queue = Array(repeating: Int.max, count: N)
var visited = Array(repeating: false, count: N)
visited[start - 1] = true
queue[start - 1] = 0
visit(start - 1)
func visit(_ node: Int) {
    guard node != end - 1 else {
        return
    }
    visited[node] = true
    
    for (end, value) in graph[node] {
        queue[end] = min(queue[end], queue[node] + value)
    }

    let next =  queue.enumerated()
        .filter({ !visited[$0.offset] })
        .min(by: { $0.element < $1.element })!.offset
    visit(next)
}

print(queue[end - 1])
