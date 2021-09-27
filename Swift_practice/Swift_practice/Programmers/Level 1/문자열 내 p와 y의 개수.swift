//
//  문자열 내 p와 y의 개수.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var countP = 0
    var countY = 0
    
    for i in s {
        if i == "y" || i == "Y" {
            countY += 1
        }
        if i == "p" || i == "P" {
            countP += 1
        }
    }
    if countP == countY {
        ans = true
    }
    return ans
}
