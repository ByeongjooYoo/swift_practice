//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation
func solution(_ s:String, _ n:Int) -> String {
    let str = Array(s)
    var result = ""
    for i in str {
        var asciiCode = i.asciiValue!
        if asciiCode >= 65 || asciiCode <= 90 {
            if asciiCode + UInt8(n) > UInt8(90){
                asciiCode = UInt8(65) + (asciiCode + UInt8(n) - UInt8(90)) - UInt8(1)
                result += String(UnicodeScalar(asciiCode))
                print(result)
            } else {
                result += String(UnicodeScalar(asciiCode + UInt8(n)))
                print(result)
            }
        } else if asciiCode >= 97 || asciiCode <= 122 {
            if asciiCode + UInt8(n) > UInt8(122){
                asciiCode = UInt8(97) + (asciiCode + UInt8(n) - UInt8(122)) - UInt8(1)
                result += String(UnicodeScalar(asciiCode))
                print(result)
            } else {
                result += String(UnicodeScalar(asciiCode + UInt8(n)))
                print(result)
            }
        } else {
            result += String(i)
            print(result)
        }
    }
    return result
}

print(solution("a B Z", 4))
print(UInt8(4))
