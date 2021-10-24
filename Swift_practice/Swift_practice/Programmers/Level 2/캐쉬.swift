//
//  캐쉬.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/24.
//

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cache: [String] = Array(repeating: "" , count: cacheSize)
    var time = 0
    func checkCache(_ city: String) -> Bool {
        return cache.contains(city)
    }
    if cache.count == 0 {
        return cities.count * 5
    }
    for city in cities {
        let str = city.uppercased()
        if checkCache(str) {
            cache.remove(at: cache.firstIndex(of: str)!)
            cache.append(str)
            time += 1
        } else {
            cache.removeFirst()
            cache.append(str)
            time += 5
        }
    }
    return time
}
