//
//  크레인 인형 뽑기 게임.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/09.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var count = 0
    var newboard = board
    var array: [Int] = []
    for column in moves {
        let index = column - 1
        for row in 0 ..< newboard.count {
            if newboard[row][index] != 0 {
                if newboard[row][index] != array.last  {
                    array.append(newboard[row][index])
                    newboard[row][index] = 0
                    break
                } else {
                    newboard[row][index] = 0
                    count += 1
                    array.removeLast()
                    break
                }
            }
        }
    }
    return count * 2
}

let board = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let moves = [1,5,3,5,1,2,1,4]

print(solution(board, moves))
