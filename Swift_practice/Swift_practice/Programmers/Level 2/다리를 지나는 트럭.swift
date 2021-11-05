//
//  다리를 지나는 트럭.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/11/05.
//

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var time = 0
    var trucks = truck_weights
    var stack: [Int] = Array(repeating: 0, count: bridge_length)
    var stackWeight = 0
    
    while true {
        if trucks.isEmpty && stackWeight == 0 {
            break
        }
        stackWeight -= stack.first!
        stack.removeFirst()
        if !trucks.isEmpty && stackWeight + trucks.first! <= weight  {
            stack.append(trucks.first!)
            stackWeight += trucks.first!
            trucks.removeFirst()
        } else {
            stack.append(0)
        }
        time += 1
    }
    return time
}
