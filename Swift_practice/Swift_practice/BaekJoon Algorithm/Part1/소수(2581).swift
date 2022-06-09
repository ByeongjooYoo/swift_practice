//
//  소수(2581).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/10.
//

import Foundation

let M = Int(readLine() ?? "") ?? -1
let N = Int(readLine() ?? "") ?? -1

var primes: [Int] = []
for i in M ... N {
    if isPrime(i) {
        primes.append(i)
    }
}
if primes.isEmpty {
    print(-1)
} else {
    print(primes.reduce(0, +))
    print(primes.min() ?? 0)
}


func isPrime(_ number: Int) -> Bool {
    if number == 2 {
        return true
    }
    
    if number % 2 == 0 {
        return false
    }
    
    if number < 4 {
        return number == 1 ? false : true
    }
    
    for i in 2 ... Int(sqrt(Double(number))) {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}
