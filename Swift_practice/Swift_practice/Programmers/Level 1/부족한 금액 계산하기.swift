//
//  부족한 금액 계산하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/30.
//

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = 0
    var priceSum = 0
    for i in 1 ... count {
        priceSum += price * i
    }
    answer = Int64(priceSum) - Int64(money)
    return answer > 0 ? answer : 0
}
