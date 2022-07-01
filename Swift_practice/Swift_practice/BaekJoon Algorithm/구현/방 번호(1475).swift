//
//  방 번호(1475).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/07/01.
//

import Foundation

let setNumber = Array<Int>(0...9)
var numbers = Array<Int>()
let input = Array(readLine() ?? "").map { Int(String($0)) ?? 0 }
var result = 0

input.forEach { number in
    if numbers.contains(number) {
        let index = numbers.firstIndex(of: number) ?? 0
        numbers.remove(at: index)
    } else if ((number == 6) && (numbers.contains(9))) || ((number == 9) && (numbers.contains(6))) {
        switch number {
        case 6:
            let index = numbers.firstIndex(of: 9) ?? 0
            numbers.remove(at: index)
        case 9:
            let index = numbers.firstIndex(of: 6) ?? 0
            numbers.remove(at: index)
        default:
            break
        }
    } else {
        result += 1
        numbers += setNumber.filter { $0 != number }
    }
}

print(result)
