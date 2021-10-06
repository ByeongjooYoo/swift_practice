//
//  로또의 최고 순위와 최저 순위.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/06.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var bestCase = 0
    var worstCase = 0
    for i in lottos {
        if i == 0 {
            bestCase += 1
        }
        if win_nums.contains(i) {
            worstCase += 1
        }
    }
    return [calculateWin(bestCase + worstCase), calculateWin(worstCase)]
}

func calculateWin(_ count: Int) -> Int {
    switch count {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}
