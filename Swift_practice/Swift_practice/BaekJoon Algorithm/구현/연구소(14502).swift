//
//  연구소(14502).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/27.
//

import Foundation

let input = (readLine() ?? "").components(separatedBy: " ").map{ Int($0) ?? 0 }
let (N, M) = (input[0], input[1])
var matrix: [[Int]] = []
var safeArea: [(Int, Int)] = []
var result = Int.min

for i in 0 ..< N {
    let line = (readLine() ?? "").components(separatedBy: " ").map{ Int($0) ?? 0 }
    for j in 0 ..< M {
        if line[j] == 0 {
            safeArea.append((i, j))
        }
    }
    matrix.append(line)
}

findThreeWalls()
print(result)

func findThreeWalls() {
    for i in 0..<safeArea.count {
        for j in i+1..<safeArea.count {
            for k in j+1..<safeArea.count {
                var newMatrix = matrix
                let point1 = safeArea[i]
                let point2 = safeArea[j]
                let point3 = safeArea[k]
                
                newMatrix[point1.0][point1.1] = 1
                newMatrix[point2.0][point2.1] = 1
                newMatrix[point3.0][point3.1] = 1
                
                let count = getSafeArea(newMatrix)
                result = max(result, count)
            }
        }
    }
}

func getSafeArea(_ matrix: [[Int]]) -> Int {
    var matrix = matrix
    var result = 0
    let findXY = [(-1, 0), (0, 1), (1, 0), (0, -1)]
    var queue: [(Int, Int)] = []
    
    for x in 0 ..< N {
        for y in 0 ..< M {
            if matrix[x][y] == 2 {
                queue.append((x, y))
                
                while !queue.isEmpty {
                    let data = queue.first ?? (0,0)
                    queue.removeFirst()
                    
                    for i in 0 ..< 4 {
                        let newX = data.0 + findXY[i].0
                        let newY = data.1 + findXY[i].1
                        
                        if (0 <= newX && newX < N) && (0 <= newY && newY < M) && matrix[newX][newY] == 0 {
                            matrix[newX][newY] = 2
                            queue.append((newX, newY))
                        }
                    }
                }
            }
        }
    }
    
    for i in 0 ..< N {
        for j in 0 ..< M {
            if matrix[i][j] == 0 {
                result += 1
            }
        }
    }
    return result
}
