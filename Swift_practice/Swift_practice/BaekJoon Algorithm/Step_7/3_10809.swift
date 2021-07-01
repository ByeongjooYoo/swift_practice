//
//  3_10809.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let str: String = readLine()!
let strArray: [String] = Array(str).map{ String($0) }
var alphabet: [Int] = Array(repeating: -1, count: 26)

for i in 0 ..< strArray.count{
    if alphabet[Int(Character(strArray[i]).asciiValue!) - 97] == -1{
        alphabet[Int(Character(strArray[i]).asciiValue!) - 97] = i
    }
}

for i in alphabet{
    print("\(i) ", terminator: "")
}
print()
