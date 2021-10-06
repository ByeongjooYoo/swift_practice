//
//  N개의 최소공배수.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/06.
//

import Foundation

func solution(_ arr:[Int]) -> Int {
    let result = test(arr)
    return result[0]
}

func test(_ arr: [Int]) -> [Int] {
    if arr.count == 1 {
        return arr
    }else {
        var newArr = arr
        newArr[0] = LCM(newArr[0], newArr[1])
        newArr.remove(at: 1)
        return test(newArr)
    }
}

func GCD(_ n: Int, _ m: Int) -> Int {
    var a = n
    var b = m
    while b != 0 {
        var r = a % b
        a = b
        b = r
    }
    return a
}

func LCM(_ n: Int, _ m: Int) -> Int {
    return n * m / GCD(n, m)
}
