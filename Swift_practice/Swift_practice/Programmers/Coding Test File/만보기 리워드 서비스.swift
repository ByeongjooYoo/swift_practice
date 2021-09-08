//
//  만보기 리워드 서비스.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/08/14.
//

import Foundation

import Foundation

func solution(_ stepCounts:[Int]) -> Int {
    var result: Int = 0
    result += calculateWeekPoint(stepCounts)
    result += calculateMissionPoint(stepCounts)
    return result
}

func calculateWeekPoint(_ stepCounts: [Int]) -> Int {
    var result: Int = 0
    for i in stepCounts {
        result += dayPointLimit(i)
    }
    return result
}

func calculateMissionPoint(_ stepCounts: [Int]) -> Int {
    var result: Int = 0
    var count: Int = 0
    let countWeek: Int = calculateWeek(stepCounts)
    if countWeek == 1 {
        for i in stepCounts {
            if i >= 10000 {
                count += 1
            }
        }
        result += checkMission(count)
    }else{
        var day: Int = 0
        for i in stepCounts {
            day += 1
            if i >= 10000 {
                count += 1
            }
            if day == 7{
                result += checkMission(count)
                day = 0
                count = 0
            }
        }
        result += checkMission(count)
    }
    return result
}

func checkMission(_ count: Int) -> Int {
    var result: Int = 0
    if count >= 1 && count < 3{
        result = 10000
    }else if count < 5 && count >= 3 {
        result = 20000
    }else if count >= 5 {
        result = 30000
    }
    print(result, count)
    return result
}

func dayPointLimit(_ count: Int) -> Int {
    let result: Int = count
    if result <= 10000 {
        return result
    }else {
        return 10000
    }
}

func calculateWeek(_ stepCounts: [Int]) -> Int {
    var count: Int = 0
    if (stepCounts.count % 7) == 0 {
        count = stepCounts.count / 7
    }else {
        count = (stepCounts.count / 7) + 1
    }
    return count
}

print(solution([10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000]))
