//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

var a = [1, 2, 3]

for i in a {
    var last = a.popLast()!
    print(last)
    last += 1
    a.append(last)
}
print(a.last!)
