//
//  9_2941.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

var str = readLine()!
let alphabet: [String] = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

//replacingOccurrences(): String안에 특정 문자를 내가 원하는 문자로 치환
for i in 0 ..< alphabet.count{
    str = str.replacingOccurrences(of: alphabet[i], with: "a")
}
print(str.count)
