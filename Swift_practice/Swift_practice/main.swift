//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//


import Foundation

struct File {
    let head: String
    let number: Int
    let fullFileName: String
}

func solution(_ files:[String]) -> [String] {
    var result: [File] = []
    let headExpression = "^[\\D ]+"
    let numberExpression = "\\d{1,5}"
    for file in files {
        var head = ""
        var number = 0
        if let headRange = file.range(of: headExpression, options: [.regularExpression]) {
            head = String(file[headRange])
            let removeHead = file[headRange.upperBound...]
            if let numberRange = removeHead.range(of: numberExpression, options: [.regularExpression]) {
                number = Int(String(file[numberRange]))!
            }
        }
        result.append(File(head: head, number: number, fullFileName: file))
    }
    result.sort { (first, second) -> Bool in
        if first.head.uppercased() == second.head.uppercased() {
            return first.number == second.number ? false : first.number < second.number
        } else {
            return first.head.uppercased() < second.head.uppercased()
        }
    }
    return result.map { $0.fullFileName }
}

let testcase1 = ["img12.png", "img10.png", "img02.png", "img1.png", "IMG01.GIF", "img2.JPG"]
let testcase2 = ["F-5 Freedom Fighter", "B-50 Superfortress", "A-10 Thunderbolt II", "F-14 Tomcat"]
print(solution(testcase1))

