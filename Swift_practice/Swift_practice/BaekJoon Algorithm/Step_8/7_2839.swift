//
//  7_2839.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/07/02.
//

import Foundation

var input: Int = Int(readLine()!)!

var count: Int = 0

while input >= 0{
    if input % 5 == 0{
        count += input / 5
        print(count)
        exit(0)
    }
    input -= 3
    count += 1
}
print(-1)
