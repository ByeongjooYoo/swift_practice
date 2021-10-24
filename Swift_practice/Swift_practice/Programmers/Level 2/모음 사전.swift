//
//  모음 사전.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/25.
//

import Foundation

func solution(_ word:String) -> Int {
    let dic = ["A":0, "E":1, "I":2, "O":3, "U":4]
    let array = [781, 156, 31, 6, 1]
    var result = 0
    let string = word.map { String($0) }
    for i in 0 ..< string.count {
        result += dic[string[i]]! * array[i]
    }
    result += word.count
    return result
}
