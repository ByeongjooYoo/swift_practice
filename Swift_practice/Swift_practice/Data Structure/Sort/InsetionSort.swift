//
//  InsetionSort.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/03/02.
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
