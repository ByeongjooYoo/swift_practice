//
//  1_10818.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let array_size: Int = Int(readLine()!)!
let array: [Int] = readLine()!.split(separator: " ").map{ Int($0)!}
print(array.min()!, array.max()!)

