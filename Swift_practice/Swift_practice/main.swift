//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

let A = Int(readLine()!) ?? 0
let T = Int(readLine()!) ?? 0
let word = Int(readLine()!) ?? 0
var bundegi: [(Int, Int)] = []
var bun = 1
var degi = 1
var turn = 0

while true {
    let prev = bun
    turn += 1
    for _ in 0 ..< 2 {
        bundegi.append((bun, 0))
        bun += 1
        bundegi.append((degi, 1))
        degi += 1
    }
    
    for _ in 0 ..< turn + 1 {
        bundegi.append((bun, 0))
        bun += 1
    }
    
    for _ in 0 ..< turn + 1 {
        bundegi.append((degi, 1))
        degi += 1
    }
    if prev < T && T <= bun {
        print(bundegi.firstIndex(where: { $0 == (T, word) })! % A)
        break
    }
}

