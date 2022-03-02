//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

//Insertion Sort 오름차순 정렬
func insertionSortAscending(array: [Int]) -> [Int] {
    var resultArray = array
    var key = 0
    for i in 1 ..< resultArray.count {
        key = resultArray[i]
        var j = i - 1
        while j >= 0 && resultArray[j] > key {
            resultArray[j + 1] = resultArray[j]
            j -= 1
        }
        resultArray[j + 1] = key
    }
    return resultArray
}

//Insertion Sort 내림차순 정렬
func insertionSortDescending(array: [Int]) -> [Int] {
    var resultArray = array
    var key = 0
    for i in 1 ..< resultArray.count {
        key = resultArray[i]
        var j = i - 1
        while j >= 0 && resultArray[j] < key {
            resultArray[j + 1] = resultArray[j]
            j -= 1
        }
        resultArray[j + 1] = key
    }
    return resultArray
}

let testcase = [6, 3, 2, 9, 4, 13, 5, 1, 7]
print(insertionSortAscending(array: testcase))
print(insertionSortDescending(array: testcase))
