//
//  BubbleSort.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/02/22.
//

import Foundation

//Bubble Sort 오름차순 정렬
func bubbleSortAscending(array: [Int]) -> [Int] {
    var resultArray = array
    for i in (0 ..< resultArray.count).reversed() {
        for j in 0 ..< i {
            if resultArray[j] > resultArray[j + 1] {
                let temp = resultArray[j]
                resultArray[j] = resultArray[j + 1]
                resultArray[j + 1] = temp
            }
        }
    }
    return resultArray
}

//Bubble Sort 내림차순 정렬
func bubbleSortDescending(array: [Int]) -> [Int] {
    var resultArray = array
    for i in (0 ..< resultArray.count).reversed() {
        for j in 0 ..< i {
            if resultArray[j] < resultArray[j + 1] {
                let temp = resultArray[j]
                resultArray[j] = resultArray[j + 1]
                resultArray[j + 1] = temp
            }
        }
    }
    return resultArray
}
