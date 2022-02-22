//
//  SelectionSort.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/02/22.
//

import Foundation

//Selection Sort 오름차순 정렬
func selectionSortAscending(array: [Int]) -> [Int] {
    var resultArray = array
    for i in 0 ..< resultArray.count - 1 {
        var min = i
        for j in i + 1 ..< resultArray.count {
            if resultArray[min] > resultArray[j] {
                min = j
            }
        }
        
        if min != i {
            let temp = resultArray[i]
            resultArray[i] = resultArray[min]
            resultArray[min] = temp
        }
    }
    return resultArray
}

//Selection Sort 내림차순 정렬
func selectionSortDescending(array: [Int]) -> [Int] {
    var resultArray = array
    for i in 0 ..< resultArray.count - 1 {
        var max = i
        for j in i + 1 ..< resultArray.count {
            if resultArray[max] < resultArray[j] {
                max = j
            }
        }

        if max != i {
            let temp = resultArray[i]
            resultArray[i] = resultArray[max]
            resultArray[max] = temp
        }
    }
    return resultArray
}
