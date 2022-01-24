//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    let result = numbers.sorted { first, second in
        return Int("\(first)\(second)")! > Int("\(second)\(first)")!
    }
    print(result)
    if result[0] == 0 {
        return "0"
    }
    return result.reduce("") { $0 + "\($1)"}
}

let testcase1 = [6, 10, 2]
let testcase2 = [3, 30, 34, 5, 9]
print(solution(testcase1))
