//
//  조이스틱.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/03/03.
//

import Foundation

func solution(_ name:String) -> Int {
    var result = 0
    let indexArray = countIndex(name)
    var move = indexArray.count - 1
    var index = 0
    
    for i in 0 ..< indexArray.count {
        result += indexArray[i]
        
        index = i + 1
        while(index < indexArray.count && indexArray[index] == 0) {
            index += 1
        }
        move = move < (i * 2 + indexArray.count - index) ? move : i * 2 + indexArray.count - index
        move = move < ((indexArray.count - index) * 2 + i) ? move : (indexArray.count - index) * 2 + i
    }
    return result + move
}

func countIndex(_ name: String) -> [Int] {
    let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let reverseAlphabet = Array(alphabet.reversed())
    var result = [Int]()
    let str = Array(name)
    for i in str {
        let startIndex = alphabet.firstIndex(of: i) ?? -1
        let endIndex = (reverseAlphabet.firstIndex(of: i) ?? -1) + 1
        result.append(startIndex < endIndex ? startIndex : endIndex)
    }
    return result
}
