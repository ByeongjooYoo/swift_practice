//
//  서울에서 김서방 찾기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    var index = 0
    for i in 0 ..< seoul.count {
        if seoul[i] == "Kim" {
            index = i
        }
    }
    let result = "김서방은 \(index)에 있다"
    return result
}
