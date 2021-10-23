//
//  쿼드압축 후 개수 세기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/23.
//

import Foundation
var result: [Int] = []
func solution(_ arr:[[Int]]) -> [Int] {
    if !checkAllNum(arr) {
        if arr.filter{ $0.count == 1 }.count == 4 {
            for i in 0 ..< 4 {
                result.append(arr[i].first!)
            }
        } else {
            divide(arr)
        }
    }
    let zero = result.filter{ $0 == 0 }.count
    let one = result.filter{ $0 == 1 }.count
    return [zero, one]
}

func divide(_ arr:[[Int]]) {
    let haf1 = arr[0 ..< arr.count/2]
    let haf2 = arr[arr.count/2 ..< arr.count]
    
    let divide1 = haf1.map{ Array($0[0 ..< $0.count/2])}
    let divide2 = haf1.map{ Array($0[$0.count/2 ..< $0.count])}
    let divide3 = haf2.map{ Array($0[0 ..< $0.count/2])}
    let divide4 = haf2.map{ Array($0[$0.count/2 ..< $0.count])}
    
    let divides = [divide1, divide2, divide3, divide4]
    
    for check in divides {
        if !checkAllNum(check) {
            if check.filter{ $0.count == 1 }.count == 4 {
                for i in 0 ..< 4 {
                    result.append(check[i].first!)
                }
            } else {
                divide(check)
            }
        }
    }
    
}

func checkAllNum(_ arr:[[Int]]) -> Bool {
    for i in arr {
        for j in i {
            if j != arr[0][0] {
                return false
            }
        }
    }
    result.append(arr[0][0])
    return true
}
