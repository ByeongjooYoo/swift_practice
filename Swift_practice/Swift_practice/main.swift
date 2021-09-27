//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation
let n = 2
func compare ( a: String,  b: String) -> Bool {
    if a[a.index(a.startIndex, offsetBy: n)] == b[b.index(b.startIndex, offsetBy: n)] {
        return a < b
    } else {
        return a[a.index(a.startIndex, offsetBy: n)] < b[b.index(b.startIndex, offsetBy: n)]
    }
}

var str = ["abce", "abcd", "cdx"]

let result = str.sorted(by: compare(a: b:))
print(result)

