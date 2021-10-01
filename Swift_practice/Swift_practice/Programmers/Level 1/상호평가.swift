//
//  상호평가.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/01.
//

import Foundation

func solution(_ scores:[[Int]]) -> String {
    var averageResult: [Double] = []
    var result = ""
    
    for i in 0 ..< scores.count {
        var scoresSum: [Int] = []
        var ownScore = 0
        for j in 0 ..< scores.count {
            if i == j {
                ownScore = scores[i][i]
            }
            scoresSum.append(scores[j][i])
        }
        if ownScore == scoresSum.max() || ownScore == scoresSum.min() {
            var count = 0
            for k in scoresSum {
                if k == ownScore {
                    count += 1
                }
            }
            if count == 1 {
                scoresSum.remove(at: i)
            }
        }
        let average = floor(Double(scoresSum.reduce(0, +)) / Double(scoresSum.count) * 10.0) / 10.0
        averageResult.append(average)
    }
    
    for i in averageResult {
        
        result += calculateGrade(i)
    }
    print(averageResult)
    return result
}

func calculateGrade(_ averageScore: Double) -> String {
    switch averageScore{
    case 90.0 ... 100.0:
        return "A"
    case 80.0 ..< 90.0:
        return "B"
    case 70.0 ..< 80.0:
        return "C"
    case 50.0 ..< 70.0:
        return "D"
    default:
        return "F"
    }
}
