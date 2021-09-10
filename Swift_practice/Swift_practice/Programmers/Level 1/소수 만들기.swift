//
//  소수 만들기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/10.
//

import Foundation

var resultArray: [[Int]] = []
func combination(total: [Int], shouldSelect: Int, current index: Int, selected: [Int]) {
    if shouldSelect == 0 {
        resultArray.append(selected)
    } else if index == total.count {
        return
    } else {
        var newSelected = selected
        newSelected.append(total[index])
        combination(total: total, shouldSelect: shouldSelect - 1, current: index + 1, selected: newSelected)
        combination(total: total, shouldSelect: shouldSelect, current: index + 1, selected: selected)
    }
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    var sumArray: [Int] = []
    
    combination(total: nums, shouldSelect: 3, current: 0, selected: [])
    for array in resultArray {
        sumArray.append(array.reduce(0) { $0 + $1 } )
    }
    
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    for sum in sumArray {
        var count: Int = 0
        for i in 1 ... sum {
            if sum % i == 0 {
                count += 1
            }
        }
        if count == 2 {
            answer += 1
            count = 0
        }
    }
    return answer
}

let testcase1 = [1, 2, 3, 4]
let testcase2 = [1,2,7,6,4]
print(solution(testcase2))

