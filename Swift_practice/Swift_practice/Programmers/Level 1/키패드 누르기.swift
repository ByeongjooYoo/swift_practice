//
//  키패드 누르기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/10.
//

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result: String = ""
    var rightHand: [Int] = [3, 0]
    var leftHand: [Int] = [3, 2]
    
    for number in numbers {
        switch number {
        case 1, 4, 7:
            result += "L"
            leftHand = findXY(number)
        case 3, 6, 9:
            result += "R"
            rightHand = findXY(number)
        default:
            let numberXY = findXY(number)
            let rightDistance = distance(firstXY: rightHand, secondXY: numberXY)
            let leftDistance = distance(firstXY: leftHand, secondXY: numberXY)
            if rightDistance > leftDistance{
                result += "L"
                leftHand = findXY(number)
            } else if rightDistance < leftDistance {
                result += "R"
                rightHand = findXY(number)
            } else {
                if hand == "right" {
                    result += "R"
                    rightHand = findXY(number)
                } else {
                    result += "L"
                    leftHand = findXY(number)
                }
            }
        }
    }
    return result
}

func findXY(_ number: Int) -> [Int] {
    var result: [Int] = []
    let keypad = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [-1, 0, -2]]
    for i in 0 ..< keypad.count {
        for j in 0 ..< keypad[i].count {
            if number == keypad[i][j] {
                result.append(i)
                result.append(j)
                break
            }
        }
    }
    return result
}

func distance(firstXY: [Int], secondXY: [Int]) -> Int {
    var result = 0
    for i in 0 ..< firstXY.count {
        let num = firstXY[i] - secondXY[i]
        result += Int(num.magnitude)
    }
    return result
}

let testcases = [[1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], [7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]]
let hands = ["right", "left", "right"]


for i in 0 ..< testcases.count {
    print(solution(testcases[i], hands[i]))
}
