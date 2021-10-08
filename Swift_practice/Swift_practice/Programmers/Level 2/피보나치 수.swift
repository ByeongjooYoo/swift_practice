//
//  피보나치 수.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/08.
//

import Foundation

func solution(_ n:Int) -> Int {
    var f1 = 0
    var f2 = 1
    if n > 1 {
        for _ in 2 ... n {
            let f = f1 + f2
            f1 = f2
            f2 = f % 1234567
        }
    }
    return f2
}
