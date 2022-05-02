//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

var person: [Int] = []
for _ in 0 ..< 9 {
    let man = Int(readLine() ?? "") ?? 0
    person.append(man)
}

var result = ""

func DFS(_ count: Int, _ sum: Int, _ realMan: [Int]) {
    if sum > 100 {
        return
    }
    if count == 7 {
        if sum == 100 {
            result = realMan.sorted(by: <).map { String($0) }.joined(separator: "\n")
        }
        return
    }
    
    for i in 0 ..< 9 {
        if !realMan.contains(person[i]) {
            var newRealMan = realMan
            newRealMan.append(person[i])
            DFS(count + 1, sum + person[i], newRealMan)
        }
    }
}
DFS(0, 0, [])
print(result)

