//
//  가장 큰 정사각형 찾기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/21.
//

import Foundation

func solution(_ board: [[Int]]) -> Int {
    var answer: Int = 0
    var dpboard = board
    if dpboard.count == 1 {
        return dpboard[0].contains(1) ? 1 : 0
    }
    if dpboard[0].count == 1 {
        for i in dpboard {
            if i.contains(1) {
                return 1
            }
        }
        return 0
    }
    for i in 1 ..< dpboard.count {
        for j in 1 ..< dpboard[i].count {
            if dpboard[i][j] == 1 {
                dpboard[i][j] = min(dpboard[i-1][j-1], dpboard[i-1][j], dpboard[i][j-1]) + 1
                if answer < dpboard[i][j] {
                    answer = dpboard[i][j]
                }
            }
        }
    }
    
    return answer * answer
}
