//
//  5_1157.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/06/30.
//

import Foundation

let str: String = readLine()!.uppercased()

var strCount: [String: Int] = [:]

str.forEach{
    if strCount[String($0)] == nil{
        strCount[String($0)] = 1
    }else{
        strCount[String($0)]! += 1
    }
}
var result: [String] = []
for i in strCount.keys{
    if strCount[i] == strCount.values.max()!{
        result.append(i)
    }
}
print(result.count > 1 ? "?" : "\(result[0])")
