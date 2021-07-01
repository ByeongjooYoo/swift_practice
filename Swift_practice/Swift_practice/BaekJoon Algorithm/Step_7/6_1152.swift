//
//  6_1152.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let wordArray: [String] = readLine()!.components(separatedBy: " ")
var count = wordArray.filter{ ($0).count > 0}

print(count.count)


