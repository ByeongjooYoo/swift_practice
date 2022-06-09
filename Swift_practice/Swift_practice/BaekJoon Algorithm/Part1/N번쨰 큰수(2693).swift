//
//  N번쨰 큰수.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/10.
//

import Foundation

let testcase = Int(readLine() ?? "") ?? -1

for _ in 0 ..< testcase {
    let input = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }.sorted(by: >)
    print(input[2])
}
