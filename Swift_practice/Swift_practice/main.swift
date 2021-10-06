//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
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

print(solution(" 3people unFollowed me "))

