//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var result = 0
    let rotateSize = rotate(sizes)
    result = findWidthMax(rotateSize) * findHeightMax(rotateSize)
    return result
}

func rotate(_ sizes:[[Int]]) -> [[Int]] {
    var rotate = sizes
    for i in 0 ..< rotate.count {
        rotate[i].sort()
    }
    return rotate
}

func findWidthMax(_ sizes:[[Int]]) -> Int {
    var max = 0
    for i in 0 ..< sizes.count {
        if max < sizes[i][0] {
            max = sizes[i][0]
        }
    }
    return max
}

func findHeightMax(_ sizes:[[Int]]) -> Int {
    var max = 0
    for i in 0 ..< sizes.count {
        if max < sizes[i][1] {
            max = sizes[i][1]
        }
    }
    return max
}


print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
