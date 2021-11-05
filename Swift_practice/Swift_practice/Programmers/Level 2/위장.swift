//
//  위장.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/11/05.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var result = 1
    var dic = [String: [String]]()
    for c in clothes {
        if dic[c[1]] != nil {
            dic[c[1]]!.append(c[0])
        } else {
            dic[c[1]] = [c[0]]
        }
    }
    let count = dic.mapValues { $0.count + 1}.values
    for i in count {
        result *= i
    }
    return result - 1
}
