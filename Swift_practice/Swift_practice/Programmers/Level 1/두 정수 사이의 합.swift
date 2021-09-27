//
//  두 정수 사이의 합.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var result: Int64 = 0
    if a == b {
        return Int64(a)
    } else if a > b {
        for i in b ... a {
            result += Int64(i)
        }
    } else {
        for i in a ... b {
            result += Int64(i)
        }
    }
    return result
}

