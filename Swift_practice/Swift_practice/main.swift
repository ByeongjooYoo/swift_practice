//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
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

print(solution([[100,90,98,88,65],[50,45,99,85,77],[47,88,95,80,67],[61,57,100,80,65],[24,90,94,75,65]]))
