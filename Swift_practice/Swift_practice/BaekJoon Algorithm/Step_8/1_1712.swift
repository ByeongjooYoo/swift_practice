//
//  1_1712.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/07/02.
//

import Foundation

func calculate_BEP(_ fixedCost: Int, _ variableCost: Int, _ price: Int) -> Int{
    if variableCost >= price{
        return -1
    }else{
        return fixedCost / (price - variableCost) + 1
    }
}

let info: [Int] = readLine()!.components(separatedBy: " ").map{ Int($0)!}

print(calculate_BEP(info[0], info[1], info[2]))
