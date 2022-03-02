//
//  소수 찾기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/03/02.
//

import Foundation

func solution(_ numbers:String) -> Int {
    let numberArrary = Array(numbers).map { Int(String($0))!}
    var result = [Int]()
    for i in 1 ... numbers.count {
        let array = permute(numberArrary, i)
        for number in array {
            if !result.contains(number) {
                result.append(number)
            }
        }
    }
    print(result)
    return result.count
}

func permute(_ nums: [Int], _ targetNum: Int) -> [Int] {
    var result = [Int]()
    var visited = [Bool](repeating: false, count: nums.count)
    
    func permutation(_ nowPermute: [Int]) {
        if nowPermute.count == targetNum {
            result.append(convertArrayToInt(nowPermute))
            return
        }
        
        for i in 0 ..< nums.count {
            if visited[i] == true {
                continue
            } else {
                visited[i] = true
                permutation(nowPermute + [nums[i]])
                visited[i] = false
            }
        }
    }
    permutation([])
    
    for i in result {
        if i == 2 {
            continue
        }
        if i == 0 || i == 1 || i % 2 == 0 {
            result.remove(at: result.firstIndex(of: i)!)
            continue
        }
        for j in 3 ..< i {
            if i % j == 0 {
                result.remove(at: result.firstIndex(of: i)!)
                break
            }
        }
    }
    return result
}

func convertArrayToInt(_ numbers: [Int]) -> Int {
    var result = 0
    var count = 1
    for i in numbers.reversed() {
        result += count * i
        count *= 10
    }
    
    return result
}
