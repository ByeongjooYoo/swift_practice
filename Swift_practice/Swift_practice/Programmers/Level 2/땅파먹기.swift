//
//  땅파먹기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/19.
//

import Foundation

func solution(_ land: [[Int]]) -> Int{
    var landArray = land
    var answer = 0
    for i in 1 ..< landArray.count {
        landArray[i][0] += max(landArray[i-1][1], landArray[i-1][2], landArray[i-1][3])
        landArray[i][1] += max(landArray[i-1][0], landArray[i-1][2], landArray[i-1][3])
        landArray[i][2] += max(landArray[i-1][0], landArray[i-1][1], landArray[i-1][3])
        landArray[i][3] += max(landArray[i-1][0], landArray[i-1][1], landArray[i-1][2])
    }
    answer = landArray[landArray.count - 1].max()!
    return answer
}

func max(_ a: Int, _ b: Int, _ c: Int) -> Int {
    let array = [a, b, c]
    return array.max()!
}
