//
//  핸드폰 번호 가리기.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/23.
//

import Foundation

func solution(_ phone_number:String) -> String {
    var phone: [Character] = Array(phone_number)
    for i in 0 ..< phone.count {
        if phone.count - i > 4 {
            phone[i] = "*"
        }
    }
    return String(phone)
}
