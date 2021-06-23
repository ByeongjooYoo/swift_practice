//
//  K번째수.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/23.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    for i in commands{
        result.append(Find_K(array, i))
    }
    return result
}

func Find_K(_ array: [Int], _ commands: [Int]) -> Int{
    var result: Int = 0
    let x = commands[0] - 1
    let y = commands[1] - 1
    let k = commands[2] - 1
    var sort_array: [Int] = Array(array[x...y])
    sort_array.sort()
    result = sort_array[k]
    return result
}



let array: [Int] = [1, 5, 2, 6, 3, 7, 4]
let commands: [[Int]] = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]

print(solution(array, commands))
