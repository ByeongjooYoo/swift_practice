//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation
func solution(_ a:Int, _ b:Int) -> String {
    let month = [1: 31, 2: 29, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31]
    let day = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    var daySum = 0
    for i in 1 ..< a {
        daySum += month[i]!
    }
    
    daySum += b
    return daySum % 7 == 0 ? day[6] : day[daySum % 7 - 1]
    //return day[daySum % 7 == 0 ? daySum % 7 : daySum % 7 - 1]
}


//for i in 1 ... 12 {
//    switch i {
//    case 1, 3, 5, 7, 8, 10, 12:
//        for j in 1 ... 31 {
//            print(solution(i, j))
//        }
//    case 2:
//        for j in 1 ... 29 {
//            print(solution(i, j))
//        }
//    case 4, 6, 9, 11:
//        for j in 1 ... 30 {
//            print(solution(i, j))
//        }
//    default:
//        print("exit")
//    }
//}
print(solution(1, 7))

