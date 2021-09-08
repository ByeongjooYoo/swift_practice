//
//  중복되는 숫자 개수.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/24.
//

import Foundation

func removeDuplicate (_ array: [Int]) -> [Int] {
    var removedArray = [Int]()
    for i in array {
        if removedArray.contains(i) == false {
            removedArray.append(i)
        }
    }
    return removedArray
}

func solution(array: Array<Int>) -> Array<Int>{
    var temp = removeDuplicate(array)
    var result: Array<Int> = []
    var count: Int = 0
    for i in temp{
        for j in array{
            if i == j{
                count += 1
            }
        }
        if count > 1 {
            result.append(count)
        }
        count = 0
    }
    
    if result.isEmpty == true{
        result.append(-1)
    }
    
    return result
}

var test: Array<Int> = [1, 2, 3, 3, 3, 3, 4, 4]

print(solution(array: test))
