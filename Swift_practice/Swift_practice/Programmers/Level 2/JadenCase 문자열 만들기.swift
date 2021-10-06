//
//  JadenCase 문자열 만들기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/06.
//

import Foundation

func solution(_ s:String) -> String {
    let words = s.components(separatedBy: " ")
    var characters = Array(repeating: [String](), count: words.count)
    var answer = Array(repeating: String(), count: words.count)
    for i in 0 ..< words.count {
        characters[i] = words[i].map{ String($0).lowercased() }
        if !characters[i].isEmpty {
            characters[i][0] = characters[i][0].uppercased()
        }
        answer[i] = characters[i].joined(separator: "")
    }
    
    return answer.joined(separator: " ")
}
