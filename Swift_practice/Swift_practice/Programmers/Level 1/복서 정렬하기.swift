//
//  복서 정렬하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/03.
//

import Foundation
struct player {
    let playerNumber: Int
    let winRate: Double
    let weights: Int
    let winWeight: Int
}

func solution(_ weights:[Int], _ head2head:[String]) -> [Int] {
    let table = replaceTable(head2head)
    var players: [player] = []
    var result: [Int] = []
    let temp = calculateWinRate(table, weights)
    let winWeights = temp.1
    let winRates = temp.0
    for i in 0 ..< winRates.count {
        players.append(player(playerNumber: i + 1, winRate: winRates[i], weights: weights[i], winWeight: winWeights[i]))
    }
    players.sort {(first, second) -> Bool in
        if first.winRate == second.winRate {
            if first.winWeight == second.winWeight {
                if first.weights == second.weights {
                    return first.playerNumber < second.playerNumber
                }
                return first.weights > second.weights
            }
            return first.winWeight > second.winWeight
        }
        return first.winRate > second.winRate
    }
    for i in players {
        result.append(i.playerNumber)
    }
    return result
}

func replaceTable(_ head2head: [String]) -> [[String]] {
    var table: [[String]] = []
    for str in head2head {
        table.append(Array(str).map{ String($0) })
    }
    return table
}

func calculateWinRate(_ table: [[String]], _ weights:[Int]) -> ([Double], [Int]) {
    var result: [Double] = []
    var result2: [Int] = []
    for i in 0 ..< table.count {
        var countOfWin = 0
        var countOfNone = 0
        var countOfWinWeight = 0
        for j in 0 ..< table[i].count {
            if table[i][j] == "W" {
                countOfWin += 1
                if weights[i] < weights[j] {
                    countOfWinWeight += 1
                }
            } else if table[i][j] == "N" {
                countOfNone += 1
            }
        }
        result2.append(countOfWinWeight)
        if table.count == countOfNone {
            result.append(0.0)
        } else {
            let winRate = (Double(countOfWin) / Double( table[i].count - countOfNone)) * 100
            result.append(winRate)
        }
    }
    return (result, result2)
}
