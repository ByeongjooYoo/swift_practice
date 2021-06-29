//
//  5_1546.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let num: Int = Int(readLine()!)!
var array: [Double] = readLine()!.components(separatedBy: " ").map{ Double($0)! }
let max: Int = Int(array.max()!)
var average: Double = 0.0
for i in 0..<array.count{
    array[i] = array[i] / Double(max) * 100
    average += array[i]
}
print(average/Double(num))
