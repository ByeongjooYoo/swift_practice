//
//  집합연산.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/24.
//

import Foundation

func solution(_ array_A: [Int], _ array_B: [Int]) -> [Int]{
    var result: [Int] = []
    let set_A: [Int] = change_set(array_A)
    let set_B: [Int] = change_set(array_B)
    
    result.append(set_A.count)
    result.append(set_B.count)
    result.append(sum(set_A, set_B))
    result.append(complement(set_A, set_B))
    result.append(intersect(set_A, set_B))
    
    return result
}

func change_set(_ array: [Int]) -> [Int]{
    var result: [Int] = []
    for i in array{
        if result.contains(i) == false{
            result.append(i)
        }
    }
    return result
}

func sum(_ array_A: [Int], _ araay_B: [Int]) -> Int {
    var result: [Int] = []
    result = array_A
    for i in araay_B{
        if result.contains(i) == false{
            result.append(i)
        }
    }
    return result.count
}

func complement(_ array_A: [Int], _ araay_B: [Int]) -> Int {
    var result: [Int] = []
    result = array_A
    for i in araay_B{
        if result.contains(i) == true{
            result.remove(at: result.firstIndex(of: i)!)
        }
    }
    return result.count
}

func intersect(_ array_A: [Int], _ araay_B: [Int]) -> Int {
    var result: [Int] = []
    for i in array_A{
        for j in araay_B{
            if i == j && result.contains(i) != true{
                result.append(i)
            }
        }
    }
    return result.count
}

let test_a1: [Int] = [1, 2, 3, 2]
let test_b1: [Int] = [1, 3]

let test_a2: [Int] = [2, 3, 4, 3, 5]
let test_b2: [Int] = [1, 6, 7]

print(solution(test_a1, test_b1))
print(solution(test_a2, test_b2))
