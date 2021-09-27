//
//  문자열 내림차순으로 배치하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation
func solution(_ s:String) -> String {
    return String(Array(s).sorted(by: >))
}
