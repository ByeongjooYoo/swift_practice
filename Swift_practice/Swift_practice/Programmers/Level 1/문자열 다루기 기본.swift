//
//  문자열 다루기 기본.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation

func solution(_ s:String) -> Bool {
    var length = false
    let isNumber = true
    if s.count == 4 || s.count == 6 {
        length = true
    }
    guard let number = Int(s) else {
        return false
    }
    return length && isNumber
}
