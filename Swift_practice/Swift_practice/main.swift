//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
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
        print(result)
    }
    result.append(dic[key]!)
    print(dic)
    return result
}

let testcase1 = "KAKAO"
print(solution(testcase1))

