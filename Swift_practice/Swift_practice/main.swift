//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation
let num = 1235
var array = Array(String(num)).map { Int(String($0))! }

print(array)
