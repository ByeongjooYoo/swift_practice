//
//  최대값과 최솟값.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/19.
//

import Foundation

func solution(_ s:String) -> String {
    let stringArray = s.components(separatedBy: " ").map { Int($0)! }
    let max = stringArray.max()!
    let min = stringArray.min()!
    return "\(min) \(max)"
}
