//
//  비밀지도.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/30.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer = [String](repeating: "", count: n)
    let arr1Decimal = convertDecimal(n, arr1)
    let arr2Decimal = convertDecimal(n, arr2)
    
    for i in 0 ..< n {
        for j in 0 ..< n {
            if arr1Decimal[i][j] == "1" || arr2Decimal[i][j] == "1" {
                answer[i] += "#"
            } else {
                answer[i] += " "
            }
        }
    }
    return answer
}

func convertDecimal(_ n:Int, _ arr:[Int]) -> [[Character]] {
    var decimalArray: [[Character]] = []
    for i in 0 ..< n {
        let decimal = Array(String(arr[i], radix: 2))
        decimalArray.append(decimal)
        decimalArray[i].insert(contentsOf: String(repeating: "0", count: n - decimal.count), at: 0)
    }
    return decimalArray
}

