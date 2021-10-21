//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
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

let testcase1 = [[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]
let testcase2 = [[0,1,1,1]]
let testcase3 = [[0,0]]
let testcase4 = [[0], [0], [0], [1]]
let testcase5 = [[0], [0], [0], [0]]

print(solution(testcase1))
