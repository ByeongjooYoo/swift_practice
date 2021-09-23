//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation



func solution(_ matrix: [[String]]) -> Int {
    let newMatrix = changeMatrix(matrix)
    let bestCaseA = bestA(newMatrix)
    let bestCaseB = bestB(newMatrix)
    var count = 0
    for i in 0 ..< bestCaseA.count {
        if bestCaseA[i] == bestCaseB[i] {
            count += 1
        }
    }
    return count
}
func changeMatrix(_ matrix: [[String]]) -> [[[Int]]]{
    var newMatrix: [[[Int]]] = []
    for i in 0 ..< matrix.count{
        var temp: [[Int]] = []
        for j in 0 ..< matrix.count{
            temp.append(matrix[i][j].components(separatedBy: " ").map { Int($0)! })
        }
        newMatrix.append(temp)
    }
    return newMatrix
}

func bestA(_ matrix: [[[Int]]]) -> [[Int]]  {
    let matrixA = matrix
    var result: [[Int]] = []
    
    for i in 0 ..< matrix.count {
        var max = 0
        var index = 0
        for j in 0 ..< matrix.count {
            if max < matrixA[j][i][0] {
                max = matrixA[j][i][0]
                index = j
            }
        }
        result.append(matrixA[index][i])
    }
    print("A Best: \(result)")
    return result
}

func bestB(_ matrix: [[[Int]]]) -> [[Int]]  {
    let matrixB = matrix
    var result: [[Int]] = []
    
    for i in 0 ..< matrix.count {
        var max = 0
        var index = 0
        for j in 0 ..< matrix.count {
            if max < matrixB[i][j][1] {
                max = matrixB[i][j][1]
                index = j
            }
        }
        result.append(matrixB[i][index])
    }
    print("B Best: \(result)")
    return result
}


var testCase1 = [["6 10", "-8 -5", "-7 7"], ["7 7", "10 -9", "-2 9"], ["4 -8", "8 8", "6 -2"]]
var testCase2 = [["2 4", "-5 -3"], ["-10 9", "3 6"]]

print(solution(testCase1))
