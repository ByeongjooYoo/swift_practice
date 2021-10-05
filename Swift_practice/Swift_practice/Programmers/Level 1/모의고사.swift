//
//  모의고사.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/05.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let man = [[1, 2, 3, 4, 5], [2, 1, 2, 3, 2, 4, 2, 5], [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]]
    var answerCount: [Int] = []
    var result: [Int] = []
    for i in man {
        answerCount.append(answer(answers, i))
    }
    let maxCount = answerCount.max()
    for i in 0 ..< answerCount.count {
        if answerCount[i] == maxCount {
            result.append(i + 1)
        }
    }
    return result
}

func answer(_ answers:[Int], _ man: [Int]) -> Int {
    var count = 0
    for i in 0 ..< answers.count {
        if answers[i] == man[i > man.count - 1 ? i % man.count : i] {
            count += 1
        }
    }
    return count
}
