//
//  압축.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/21.
//

import Foundation
func solution(_ msg:String) -> [Int] {
    var dic = [String:Int]()
    for i in (1...26) {
        dic[String(UnicodeScalar(i + 64)!)] = i
    }

    var key = ""
    let msgA = Array(msg)
    var result: [Int] = []

    for i in 0 ..< msgA.count {
        let newKey = key + String(msgA[i])
        if dic[newKey] != nil {
            key.append(msgA[i])
        } else {
            dic[newKey] = dic.count + 1
            result.append(dic[key]!)
            key = String(msgA[i])
        }
    }
    result.append(dic[key]!)
    return result
}
