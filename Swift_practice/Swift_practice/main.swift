//
//  main.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/04/19.
//

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var skills = skill.map { String($0) }
    var newSkillTree: [String] = []
    var count = 0
    for skill in skill_trees {
        var tree = ""
        for i in skill {
            for j in 0 ..< skills.count {
                if String(i) == skills[j] {
                    tree += String(j)
                }
            }
        }
        newSkillTree.append(tree)
    }
    var temp: [String] = []
    for i in 0 ..< skills.count {
        temp.append(String(i))
    }
    
    for skill in newSkillTree {
        let tree = skill.map{ String($0) }
        var sum = 0
        
        var flag = false
        for i in 0 ..< tree.count {
            if temp[i] == tree[i] {
                flag = true
            } else {
                flag = false
                break
            }
        }
        if flag || skill.isEmpty {
            count += 1
        }
    }
    return count
}

let test1 = ("CBD", ["CAD"]) // 0
let test2 =  ("CBD", ["AEF", "ZJW"]) //2
let test3 =  ("REA", ["REA", "POA"]) //1
let test4 = ("CBDK", ["CB", "CXYB", "BD", "AECD", "ABC", "AEX", "CDB", "CBKD", "IJCB", "LMDK"]) //4
let test5 = ("BDC", ["AAAABACA"]) //0
let test6 = ("CBD", ["C", "D", "CB", "BDA"]) //2


print(solution(test1.0, test1.1))

print(solution(test2.0, test2.1))

print(solution(test3.0, test3.1))

print(solution(test4.0, test4.1))

print(solution(test5.0, test5.1))

print(solution(test6.0, test6.1))



