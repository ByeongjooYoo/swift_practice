//
//  스킬트리.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/23.
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
