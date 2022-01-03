//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities
    var printIndex = Array<Int>()
    var locations = Array<Int>(0..<queue.count)
    while queue.count > 0 {
        let first = queue.first!
        let index = locations.first!
        queue.removeFirst()
        locations.removeFirst()
        
        if first >= queue.max() ?? 0 {
            printIndex.append(index)
        } else {
            queue.append(first)
            locations.append(index)
        }
    }
    
    return printIndex.firstIndex(of: location)! + 1
}

print(solution([1, 1, 9, 1, 1, 1], 0))
