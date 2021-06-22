//
//  10_10430.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

let input = readLine()

if let input = input{
    var array = input.components(separatedBy: " ")
    let A = Int(array[0])!
    let B = Int(array[1])!
    let C = Int(array[2])!
    print((A+B)%C)
    print( ((A%C)+(B%C))%C)
    print((A*B)%C)
    print(((A%C) * (B%C))%C)
}
