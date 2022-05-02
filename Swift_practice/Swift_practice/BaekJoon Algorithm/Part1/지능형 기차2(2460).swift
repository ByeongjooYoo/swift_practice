//
//  지능형 기차2(2460).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/05/03.
//

import Foundation

var max = 0
var sum = 0
for _ in 0 ..< 10 {
    let station = (readLine() ?? "").components(separatedBy: " ").map{ Int($0) ?? 0 }
    sum += station[1] - station[0]
    if max < sum {
        max = sum
    }
}
print(max)
