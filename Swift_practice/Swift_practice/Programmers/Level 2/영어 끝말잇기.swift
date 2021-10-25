//
//  영어 끝말잇기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/25.
//

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var array: [String] = []
    var flag = true
    var wrongWord = ""
    for word in words {
        if array.isEmpty{
            array.append(word)
        } else if !array.contains(word) {
            if array.last!.last! == word.first! {
                array.append(word)
            } else {
                wrongWord = word
                flag = false
                break
            }
        } else {
            wrongWord = word
            flag = false
            break
        }
    }
    if flag {
        return [0, 0]
    }
    let count = array.count / n + 1
    let num = array.count % n + 1
    return [num, count]
}
