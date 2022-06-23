//
//  멀티탭 스케줄링(1700).swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2022/06/23.
//

import Foundation


let input1 = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
let (N, K) = (input1[0], input1[1])

var numbers = (readLine() ?? "").components(separatedBy: " ").map { Int($0) ?? 0 }
var plugs: [Int] = []
var result = 0
while numbers.count > 0 {
    let number = numbers.first ?? 0
    numbers.removeFirst()
    
    if plugs.contains(number) {
        continue
    } else if plugs.count < N {
        plugs.append(number)
    } else {
        //지우는 로직!
        var noContainPlug = -1
        var maxIndex = 0
        for i in 0 ..< plugs.count {
            let check = findNoMore(plugs[i])
            if check == -1 {
                noContainPlug = i
                break
            } else {
                maxIndex = check > maxIndex ? check : maxIndex
            }
        }
        
        if noContainPlug != -1 {
            plugs.remove(at: noContainPlug)
        } else {
            let newIndex = plugs.firstIndex(of: numbers[maxIndex]) ?? -1
            plugs.remove(at: newIndex)
        }
        
        plugs.append(number)
        
        result += 1
    }
}

func findNoMore(_ plug: Int) -> Int {
    var result = -1
    for i in 0 ..< numbers.count {
        if plug == numbers[i] {
            result = i
            break
        }
    }
    return result
}

print(result)
