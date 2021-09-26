//
//  이상한 문자 만들기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/26.
//

import Foundation
func solution(_ s:String) -> String {
    let str = s.components(separatedBy: " ")
    var result = ""
    for i in str {
        let word = Array(i)
        for j in 0 ..< word.count {
            if j % 2 == 0 {
                result += String(word[j].uppercased())
            } else {
                result += String(word[j].lowercased())
            }
        }
        result += " "
    }
    result.removeLast()
    return result
}
