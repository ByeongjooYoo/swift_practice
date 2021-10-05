//
//  체육복.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/05.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostMan = lost.sorted()
    var reserve1 = reserve.sorted()
    for i in lost {
        if reserve1.contains(i) {
            lostMan.remove(at: lostMan.firstIndex(of: i)!)
            reserve1.remove(at: reserve1.firstIndex(of: i)!)
        }
    }
    var lostResult = lostMan
    for i in lostMan {
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
