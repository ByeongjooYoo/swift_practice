//
//  자연수 뒤집어 배열로 만들기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/26.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    var array = Array(String(n)).map { Int(String($0))! }
    return array.reversed()
}
