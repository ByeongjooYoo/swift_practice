//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var arrayA = A
    var arrayB = B
    var ans = 0
    while arrayA.count != 0 {
        let maxA = arrayA.max()!
        let minA = arrayA.min()!
        let maxB = arrayB.max()!
        let minB = arrayB.min()!
        if arrayA.count == 1{
            ans += minA * minB
        } else {
            ans += maxA * minB
            ans += maxB * minA
            arrayA.remove(at: arrayA.firstIndex(of: maxA)!)
            arrayA.remove(at: arrayA.firstIndex(of: minA)!)
            arrayB.remove(at: arrayB.firstIndex(of: maxB)!)
            arrayB.remove(at: arrayB.firstIndex(of: minB)!)
        }
    }
    return ans
}

let array = [1,2,3,4,5]
print(array.startIndex)
