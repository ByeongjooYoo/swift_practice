//
//  3진법 뒤집기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/04.
//

import Foundation

func solution(_ n:Int) -> Int {
    let decimal = Array(String(n, radix: 3)).map{ Int(String($0))! }
    var result = 0
    for i in 0 ..< decimal.count {
        result += decimal[i] * Int(pow(3.0, Double(i)))
    }
    return result
}
