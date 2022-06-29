//
//  통계값(2108).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/29.
//

import Foundation

let N = Int(readLine() ?? "") ?? 0
var numbers: [Int] = []
var count: [Int:Int] = [:]
for _ in 0 ..< N {
    let number = Int(readLine() ?? "") ?? 0
    numbers.append(number)
    count[number] = 0
}
numbers.forEach { count[$0]! += 1 }

let sortCount = count.sorted {
    if $0.value > $1.value {
        return true
    } else if $0.value == $1.value {
        if $0.key < $1.key {
            return true
        }
    }
    return false
}


let average = Int(round(Double(numbers.reduce(0, +)) / Double(N)))
print(average)

numbers.sort()
print(numbers[N/2])

if sortCount.count == 1 {
    print(sortCount[0].key)
} else if sortCount[0].value == sortCount[1].value {
    print(sortCount[1].key)
} else {
    print(sortCount[0].key)
}

print((numbers.max() ?? 0) - (numbers.min() ?? 0) )
