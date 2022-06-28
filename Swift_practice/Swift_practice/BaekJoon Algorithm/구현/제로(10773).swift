//
//  제로(10773).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/28.
//

import Foundation

let k = Int(readLine() ?? "") ?? 0
var numbers = Array<Int>()

for _ in 0 ..< k {
    let number = Int(readLine() ?? "") ?? 0
    if number == 0 {
        numbers.removeLast()
    } else {
        numbers.append(number)
    }
}

print(numbers.reduce(0, +))
