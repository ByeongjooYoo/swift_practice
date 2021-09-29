//
//  2016년.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/29.
//

func solution(_ a:Int, _ b:Int) -> String {
    let month = [1: 31, 2: 29, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31]
    let day = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    var daySum = 0
    for i in 1 ..< a {
        daySum += month[i]!
    }
    
    daySum += b
    return daySum % 7 == 0 ? day[6] : day[daySum % 7 - 1]
}
