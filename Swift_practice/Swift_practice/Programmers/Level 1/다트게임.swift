//
//  다트게임.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/09/30.
//

import Foundation
func solution1(_ dartResult:String) -> Int {
    let dart = Array(dartResult)
    var resultArray: [Int] = []
    var count = 0
    for i in 0 ..< dart.count {
        print(dart[i])
        if dart[i].asciiValue! >= 48 && dart[i].asciiValue! <= 57 {
            if dart[i] == "0" {
                if i == 0 || dart[i-1] != "1" {
                    resultArray.append(0)
                }
            } else if dart[i] == "1" {
                if i != dart.count - 1 && dart[i+1] == "0" {
                    resultArray.append(10)
                } else {
                    resultArray.append(1)
                }
            } else {
                resultArray.append(Int(String(dart[i]))!)
            }
        }
        print(resultArray)
        if dart[i] == "S" || dart[i] == "D" || dart[i] == "T" {
            switch dart[i] {
            case "S":
                resultArray[count] = Int(pow(Double(resultArray[count]), 1.0))
                count += 1
            case "D":
                resultArray[count] = Int(pow(Double(resultArray[count]), 2.0))
                count += 1
            case "T":
                resultArray[count] = Int(pow(Double(resultArray[count]), 3.0))
                count += 1
            default:
                resultArray[0] += 0
            }
        }
        
        if dart[i] == "*"{
            if count == 1 {
                resultArray[0] *= 2
            } else {
                resultArray[count-1] *= 2
                resultArray[count-2] *= 2
            }
        }
        if dart[i] == "#" {
            resultArray[count-1] *= -1
        }
    }
    return resultArray.reduce(0, +)
}



func solution2(_ dartResult:String) -> Int {
    let resultArray = dartResult.getArrayAfterRegex(regex: "[0-9]+[(S|D|T)][(*|#)]?")
    var scoreResult: [Int] = []
    for i in 0 ..< resultArray.count {
        let scoreStr = resultArray[i].getArrayAfterRegex(regex: "[0-9]")
        var str = ""
        for i in scoreStr{
            str += i
        }
        var score = Int(str)!
        let bonusStr = resultArray[i].getArrayAfterRegex(regex: "(S|D|T)")
        let star = resultArray[i].contains("*")
        let achar = resultArray[i].contains("#")
        if !bonusStr.isEmpty {
            switch bonusStr[0] {
            case "S":
                score = Int(pow(Double(score), 1.0))
            case "D":
                score = Int(pow(Double(score), 2.0))
            case "T":
                score = Int(pow(Double(score), 3.0))
            default:
                score += 0
            }
        }
        
        if star {
            if i == 0 {
                score *= 2
            } else{
                scoreResult[i-1] *= 2
                score *= 2
            }
        }
        if achar {
            score *= -1
        }
        print("\(resultArray[i]) star: \(star) achar: \(achar) ")
        print(score)
        scoreResult.append(score)
    }
    return scoreResult.reduce(0, +)
}

extension String{
    func getArrayAfterRegex(regex: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: self,
                                        range: NSRange(self.startIndex..., in: self))
            return results.map {
                String(self[Range($0.range, in: self)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
}

print(solution1("1D2S#10S"))
