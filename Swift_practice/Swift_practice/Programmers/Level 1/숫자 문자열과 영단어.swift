//
//  숫자 문자열과 영단어.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/09.
//

import Foundation

func solution(_ s:String) -> Int {
    let numString = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var result = s
    for i in 0 ..< numString.count {
        result = result.replacingOccurrences(of: numString[i], with: String(i))
    }
    return Int(result)!
}

let testCases: [String] = ["one4seveneight", "23four5six7", "2three45sixseven", "123"]

for testCase in testCases{
    print(solution(testCase))
}
