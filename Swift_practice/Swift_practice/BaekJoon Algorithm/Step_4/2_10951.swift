//
//  2_10951.swift
//  Swift_practice
//
//  Created by 유병주 on 2021/06/22.
//

import Foundation

while let input = readLine(){
    print(input.components(separatedBy: " ").map{ Int($0)! }.reduce(0,+))
}
