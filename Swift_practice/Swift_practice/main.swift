//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

func arithmeticProgression(array: [Int]) -> Bool {
    var result: Bool = false
    if array.count == 1 || array.count == 2{
        return true
    }else if array.count == 3{
        if array[2] - array[1] == array[1] - array[0]{
            return true
        }
    }
    return result
}

let num: Int = Int(readLine()!)!
var count: Int = 0

for i in 1...num{
    let num_array: [Int] = Array(String(i)).map{ Int(String($0))!}
    //print(num_array)
    if arithmeticProgression(array: num_array) == true{
        count += 1
    }
}
print(count)
