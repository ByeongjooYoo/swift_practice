//
//  피보나치 수5(10870).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/05/03.
//

import Foundation

let n = Int(readLine() ?? "") ?? 0
var num1 = 1
var num2 = 0
var number = 0
switch n {
case 0:
    print(n)
    break
case 1:
    print(n)
    break
default:
    for _ in 2 ... n {
        number = num1 + num2
        num2 = num1
        num1 = number
    }
    print(number)
}
