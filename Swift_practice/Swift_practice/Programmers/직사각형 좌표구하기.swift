//
//  직사각형 좌표구하기.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/23.
//

import Foundation

func solution(_ v: [[Int]]) -> [Int]
{
    var ans = [Int]()
    ans.append(Find_X(v))
    ans.append(Find_Y(v))
    return ans
}

func Find_X(_ v: [[Int]]) -> Int
{
    var x: Int = -1
    
    var check: [Int] = []
    var count: Int = 0
    for i in v{
        for j in 0..<v.count{
            if i[0] == v[j][0]{
                count += 1
            }
        }
        if count == 1{
            check = i
        }
        count = 0
    }
    x = check[0]
    return x
}

func Find_Y(_ v: [[Int]]) -> Int
{
    var y: Int = -1
    
    var check: [Int] = []
    var count: Int = 0
    for i in v{
        for j in 0..<v.count{
            if i[1] == v[j][1]{
                count += 1
            }
        }
        if count == 1{
            check = i
        }
        count = 0
    }
    y = check[1]
    return y
}

let arr1: [[Int]] = [[1,4], [3, 4], [3, 10]]
let arr2: [[Int]] = [[1,1], [2, 2], [1, 2]]


print(solution(arr1))
print(solution(arr2))
