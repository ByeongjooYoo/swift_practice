//
//  중복디는 이름 찾기.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/24.
//

import Foundation

func solution(_ array:[String]) -> Bool {
    var result: Bool = false
    var count: Int = 0
    for i in array{
        for j in array{
            if i.contains(j){
                count += 1
            }
        }
        if count == 2{
            result = true
        }
        count = 0
    }
    return result
}


let name_list1: [String] = ["가을", "우주", "너굴"]
let name_list2: [String] = ["봄", "여울", "봄봄"]
let name_list3: [String] = ["너굴", "너울", "여울","서울"]
let name_list4: [String] = ["너굴", "너울", "봄봄봄봄","봄봄"]

print(solution(name_list1))
print(solution(name_list2))
print(solution(name_list3))
print(solution(name_list4))
