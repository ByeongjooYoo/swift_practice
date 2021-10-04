//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
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

func solution1(_ n: Int, _ stages: [Int]) -> [Int] {
    var rates = Array(repeating: 0, count: n + 1)

    for stage in stages {
        for i in 0..<stage {
            rates[i] += 1      // stage가 3 이면 stage 1 2 3 을 시도한게 된다.
        }
    }
print(rates)
    var result = [Int:Double]()
    for i in 0..<n {
        result.updateValue(Double(rates[i] - rates[i + 1]) / Double(rates[i]), forKey: i+1)
    }
    return result.sorted(by: <).sorted(by: {$0.value > $1.value}).map({ $0.key })
}


print(solution1(5, [2, 1, 2, 6, 2, 4, 3, 3]))
