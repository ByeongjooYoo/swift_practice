//
//  올바른 괄호.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/20.
//

import Foundation

func solution(_ s: String) -> Bool {
    var ans = false
    var countOpen = 0
    var state = true
    for i in s {
        if i == "(" && state == true{
            countOpen += 1
            state = false
        } else if i == "(" && state == false {
            countOpen += 1
        } else if i == ")" && state == true && countOpen == 0 {
            state = false
            break
        } else if i == ")" {
            state = true
            countOpen -= 1
        }
    }
    if state == true && countOpen == 0 {
        ans = true
    }
    return ans
}
