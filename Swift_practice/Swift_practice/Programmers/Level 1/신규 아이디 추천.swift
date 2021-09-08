//
//  신규 아이디 추천.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/08.
//

import Foundation

func solution(_ new_id: String) -> String {
    var result_id = step1(new_id)
    result_id = step2(result_id)
    result_id = step3(result_id)
    result_id = step4(result_id)
    result_id = step5(result_id)
    result_id = step6(result_id)
    result_id = step7(result_id)
    return result_id
}

//1단계 new_id의 모든 대문자를 대응되는 소문자로 치환합니다.
func step1(_ new_id: String) -> String {
    let result_id: String = new_id.lowercased()
    return result_id
}

//2단계 new_id에서 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거합니다.
// 80 ~ 89, 97~ 122
func step2(_ new_id: String) -> String {
    var id = Array(new_id)
    id = id.filter { (($0.asciiValue! >= 48) && ($0.asciiValue! <= 57)) || (($0.asciiValue! >= 97) && ($0.asciiValue! <= 122)) || ($0.asciiValue! == 45) || ($0.asciiValue! == 46) || ($0.asciiValue! == 95) }
    let result_id = String(id)
    return result_id
}

//3단계 new_id에서 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환합니다.
func step3(_ new_id: String) -> String {
    var id = Array(new_id)
    var result_id: String = ""
    var indexArray: [Int] = []
    if id.count < 2 {
        result_id = String(id)
    } else {
        for i in 1 ..< id.count {
            if id[i] == "." && id[i-1] == "."{
                indexArray.append(i)
            }
        }
        for index in indexArray.reversed() {
            id.remove(at: index)
        }
        result_id = String(id)
    }
    return result_id
}


//4단계 new_id에서 마침표(.)가 처음이나 끝에 위치한다면 제거합니다.
func step4(_ new_id: String) -> String {
    var id = Array(new_id)
    if id.isEmpty {
        return ""
    } else {
        if id.first == "." {
            id.remove(at: 0)
        }
        if id.last == "." {
            id.remove(at: id.count-1)
        }
        let result_id = String(id)
        return result_id
    }
}


//5단계 new_id가 빈 문자열이라면, new_id에 "a"를 대입합니다.
func step5(_ new_id: String) -> String {
    var id = Array(new_id)
    if id.isEmpty {
        id.append("a")
    }
    let result_id = String(id)
    return result_id
}


//6단계 new_id의 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거합니다.
//     만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문자를 제거합니다.
func step6(_ new_id: String) -> String {
    var id: String = ""
    if new_id.count >= 16 {
        let range = new_id.startIndex ..< new_id.index(new_id.startIndex, offsetBy: 15)
        id = String(new_id[range])
        id = step4(id)
    } else {
        id = new_id
    }
    return id
}

//7단계 new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 끝에 붙입니다.
func step7(_ new_id: String) -> String {
    var id = Array(new_id)
    while id.count < 3 {
        id.append(id.last!)
    }
    let result_id = String(id)
    return result_id
}


let testCases: [String] = ["...!@BaT#*..y.abcdefghijklm", "z-+.^.", "=.=", "123_.def", "abcdefghijklmn.p", ".a.a.a.a."]

for testCase in testCases{
    print(solution(testCase))
}

