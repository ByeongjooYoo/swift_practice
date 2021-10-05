//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostMan = lost
    var reserve1 = reserve.sorted()
    for i in lost.sorted() {
        if reserve1.contains(i) {
            lostMan.remove(at: lostMan.firstIndex(of: i)!)
            reserve1.remove(at: reserve1.firstIndex(of: i)!)
        }
    }
    var lostResult = lostMan
    for i in lostMan.sorted() {
        for j in reserve1 {
            if i - 1 == j || i + 1 == j {
                lostResult.remove(at: lostResult.firstIndex(of: i)!)
                reserve1.remove(at: reserve1.firstIndex(of: j)!)
                break
            }
        }
    }
    
    let result = n - lostResult.count
    return result
}

print(solution(5, [1,2,3], [2,3,4]))

