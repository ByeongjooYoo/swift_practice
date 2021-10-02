//
//  직업군 추천하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/02.
//

import Foundation

func solution(_ table:[String], _ languages:[String], _ preference:[Int]) -> String {
    var tableArray: [[String]] = []
    for i in table {
        tableArray.append(i.components(separatedBy: " "))
    }
    return returnPreference(tableArray, languages, preference)
}

func returnPreference(_ table: [[String]],_ languages: [String], _ preference: [Int]) -> String {
    var result: [String : Int] = ["SI": 0, "CONTENTS" : 0, "HARDWARE" : 0, "PORTAL" : 0, "GAME" : 0]
    for i in 0 ..< table.count {
        var score = 0
        for j in 1 ..< table[i].count {
            for k in 0 ..< languages.count {
                if table[i].contains(languages[k]) {
                    if table[i][j] == languages[k] {
                        score += (table[i].count - j) * preference[k]
                    }
                }
            }
        }
        result[table[i][0]] = score
    }
    var preference: [String] = []
    for (key, value) in result {
        if value == result.values.max()! {
            preference.append(key)
        }
    }
    if preference.count > 1 {
        preference.sort()
    }
    return preference[0]
}
