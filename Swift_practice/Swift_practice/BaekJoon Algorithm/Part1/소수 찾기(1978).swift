//
//  소수 찾기(1978).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/10.
//

import Foundation

let n = Int(readLine() ?? "") ?? -1

let input = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
var count = 0
for i in 0 ..< n {
    if isPrime(input[i]) {
        count += 1
    }
}
print(count)

func isPrime(_ n: Int) -> Bool {
    if n == 2 {
        return true
    }
    if n % 2 == 0 {
        return false
    }
    if n < 4 {
        return n == 0 || n == 1 ? false : true
    }
    for i in 2 ... Int(sqrt(Double(n))) {
        if n % i == 0 {
            return false
        }
    }
    return true
}
