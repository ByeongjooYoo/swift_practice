//
//  10_1316.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let wordCount: Int = Int(readLine()!)!
var resultCount: Int = 0
for i in 0 ..< wordCount{
    let word: String = readLine()!
    var wordCheck: [Character] = []
    for i in word{
        if !wordCheck.contains(i) {
            wordCheck.append(i)
        }else if wordCheck.last! != i{
            wordCheck.removeAll()
            break
        }
    }
    if wordCheck.count > 0 {
        resultCount += 1
    }
}
print(resultCount)
