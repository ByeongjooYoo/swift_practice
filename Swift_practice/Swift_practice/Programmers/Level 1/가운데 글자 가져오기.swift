//
//  가운데 글자 가져오기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/28.
//
import Foundation

func solution(_ s:String) -> String {
    if s.count == 1 || s.count == 2 {
        return s
    } else if s.count % 2 == 0 {
        return String(s[s.index(s.startIndex, offsetBy: (s.count / 2) - 1)]) + String(s[s.index(s.startIndex, offsetBy: (s.count / 2))])
    } else {
        return String(s[s.index(s.startIndex, offsetBy: s.count / 2)])
    }
}
