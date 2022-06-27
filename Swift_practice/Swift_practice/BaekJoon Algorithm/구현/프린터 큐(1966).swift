//
//  프린터 큐(1966).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/27.
//

import Foundation

let k = Int(readLine() ?? "") ?? 0
var result = Array<Int>()

for _ in 0 ..< k {
    let line = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
    let N = line[0]
    let M = line[1]
    var count = 0
    var queue = Array<(Int, Int)>()
    let input = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0}
    for (index, value) in input.enumerated() {
        queue.append((index, value))
    }
    
    
    while !queue.isEmpty {
        let context = queue.first ?? (0, 0)
        if isMax(queue, context) {
            queue.remove(at: 0)
            count += 1
            if context.0 == M {
                result.append(count)
                break
            }
        } else {
            queue.remove(at: 0)
            queue.append(context)
        }
    }
}

func isMax(_ queue: [(Int, Int)], _ context: (Int, Int)) -> Bool {
    return queue.max{ $0.1 < $1.1 } ?? (0, 0) == context ? true : false
}

result.forEach { print($0) }
