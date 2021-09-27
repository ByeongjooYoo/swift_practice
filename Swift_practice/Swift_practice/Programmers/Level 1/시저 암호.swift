//
//  시저 암호.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let str = Array(s)
    var result = ""
    for i in str {
        
        var asciiCode = i.asciiValue!
        if asciiCode >= 65 && asciiCode <= 90 {
            if asciiCode + UInt8(n) > UInt8(90){
                asciiCode = UInt8(65) + (asciiCode + UInt8(n) - UInt8(90)) - UInt8(1)
                result += String(UnicodeScalar(asciiCode))
            } else {
                result += String(UnicodeScalar(asciiCode + UInt8(n)))
            }
        } else if asciiCode >= 97 && asciiCode <= 122 {
            if asciiCode + UInt8(n) > UInt8(122){
                asciiCode = UInt8(97) + (asciiCode + UInt8(n) - UInt8(122)) - UInt8(1)
                result += String(UnicodeScalar(asciiCode))
            } else {
                result += String(UnicodeScalar(asciiCode + UInt8(n)))
            }
        } else {
            result += String(i)
        }
    }
    return result
}
