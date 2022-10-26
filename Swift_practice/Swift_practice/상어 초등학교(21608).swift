//
//  상어 초등학교(21608).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/10/27.
//

import Foundation

let N = Int(readLine()!) ?? 0

let totalStudent = N * N

var matrix: [[Int]] = []
var seat = Array(Array(repeating: Array(repeating: 0, count: N), count: N))
let findXY = [(-1, 0), (0, 1), (1, 0), (0, -1)]
let score = [0: 0, 1:1, 2:10, 3:100, 4:1000]
var result = 0

for _ in 0 ..< totalStudent {
    let input = readLine()!.split(separator: " ").map { Int($0) ?? 0 }
    matrix.append(input)
}

func findBestSeat(x: Int, y: Int) -> ([Int], Int) {
    var near: [Int] = []
    var empty = 0
    for i in findXY {
        let newX = x + i.0
        let newY = y + i.1
        
        if (0 ..< N) ~= newX && (0 ..< N) ~= newY {
            if seat[newX][newY] > 0 {
                near.append(seat[newX][newY])
            } else if seat[newX][newY] == 0 {
                empty += 1
            }
        }
    }
    return (near, empty)
}

func compute(x: Int, y: Int, number: Int) -> Int {
    let index = matrix.firstIndex(where: { $0.first! == number })!
    var result = 0
    let likes = Array(matrix[index][1..<matrix[0].count])
    for i in findXY {
        let newX = x + i.0
        let newY = y + i.1
        
        if (0 ..< N) ~= newX && (0 ..< N) ~= newY {
            if likes.contains(seat[newX][newY]) {
                result += 1
            }
        }
    }
    return result
}

for student in matrix {
    let number = student[0]
    let likes = Array(student[1..<student.count])
    var array: [[Int]] = []
    for i in 0 ..< N {
        for j in 0 ..< N {
            var likeCount = 0
            if seat[i][j] != 0 {
                continue
            }
            let (near, empty) = findBestSeat(x: i, y: j)
            for who in likes {
                if near.contains(who) {
                    likeCount += 1
                }
            }
            let temp = [likeCount, empty, i, j]
            array.append(temp)
        }
    }
    array = array.sorted(by: {
        if $0[0] > $1[0] {
            return true
        } else if $0[0] == $1[0] {
            if $0[1] > $1[1] {
                return true
            } else if $0[1] == $1[1] {
                if $0[2] < $1[2] {
                    return true
                } else if $0[2] == $1[2] {
                    if $0[3] < $1[3] {
                        return true
                    } else {
                        return false
                    }
                }
            }
        }
        return false
    })
    let x = array[0][2]
    let y = array[0][3]
    seat[x][y] = number
}

for i in 0 ..< N {
    for j in 0 ..< N {
        let count = compute(x: i, y: j, number: seat[i][j])
        result += score[count]!
    }
}


//print()
//matrix.forEach{ print($0) }
//print()
seat.forEach{ print($0) }
print(result)
