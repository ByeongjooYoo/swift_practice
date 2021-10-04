//
//  실패율.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/04.
//

import Foundation

//pass code
func solution1(_ N:Int, _ stages:[Int]) -> [Int] {
    var players = Array(repeating: 0, count: N + 1)
    for stage in stages {
        for i in 0 ..< stage {
            players[i] += 1
        }
    }
    var failRate: [Int : Double] = [:]
    for i in 0 ..< N {
        failRate[i+1] = Double(players[i] - players[i + 1]) / Double(players[i])
    }
    let sortRate = failRate.sorted(by: <).sorted { $0.value > $1.value}
    let result = sortRate.map { $0.key }
    return result
}

//시간초과 코드
func solution2(_ N:Int, _ stages:[Int]) -> [Int] {
    let failRate = calculrateFailRate(N, stages)
    let sortRate = failRate.sorted(by: <).sorted { $0.value > $1.value}
    return sortRate.map { $0.key }
}

func calculrateFailRate(_ N:Int, _ stages:[Int]) -> [Int :Double] {
    var failRate: [Int : Double] = [:]
    for i in 1 ... N {
        let player = stages.filter{ $0 >= i }.count
        let notClear = stages.filter{ $0 == i }.count
        failRate[i] = Double(notClear) / Double(player)
    }
    return failRate
}
