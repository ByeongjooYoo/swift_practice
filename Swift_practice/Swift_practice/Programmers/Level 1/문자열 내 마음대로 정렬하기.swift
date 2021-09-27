//
//  문자열 내 마음대로 정렬하기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/27.
//

import Foundation

var number = 0

func solution(_ strings:[String], _ n:Int) -> [String] {
    number = n
    let result = strings.sorted(by: compare(a: b:))
    return result
}

func compare ( a: String,  b: String) -> Bool {
    if a[a.index(a.startIndex, offsetBy: number)] == b[b.index(b.startIndex, offsetBy: number)] {
        return a < b
    } else {
        return a[a.index(a.startIndex, offsetBy: number)] < b[b.index(b.startIndex, offsetBy: number)]
    }
}

//Best solution
func solutionBest(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}
