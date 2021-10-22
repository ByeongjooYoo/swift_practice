//
//  방문길이.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/23.
//

import Foundation

func solution(_ dirs:String) -> Int {
    var current = (0, 0)
    var set = Set<String>()
    let command = dirs.map { String($0) }
    
    for str in command {
        var point = current
        var x = point.0
        var y = point.1
        
        if str == "U" {
            y += 1
        } else if str == "D" {
            y -= 1
        } else if str == "L" {
            x -= 1
        } else if str == "R" {
            x += 1
        }
        
        if x > 5 || x < -5 {
            continue
        }
        
        if y > 5 || y < -5 {
            continue
        }
        
        point.0 = x
        point.1 = y
        
        if !set.contains("\(point)\(current)") && !set.contains("\(current)\(point)"){
            set.insert("\(point)\(current)")
        }
        current = point
    }
    return set.count
}
