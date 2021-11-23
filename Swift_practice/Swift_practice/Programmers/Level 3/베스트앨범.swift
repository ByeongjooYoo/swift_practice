//
//  베스트앨범.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/11/23.
//

import Foundation

struct Song {
    let type: String
    let playCount: Int
    let songNumber: Int
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var bestTrack: [Song] = []
    var songs: [Song] = []
    var genre: [String: Int] = [:]
    for i in 0 ..< genres.count {
        let song = Song(type: genres[i], playCount: plays[i], songNumber: i)
        songs.append(song)
        genre[genres[i]] = 0
    }
    for i in songs {
        genre[i.type]! += i.playCount
    }
    let sortGenre = genre.sorted(by: { $0.value > $1.value})
    songs.sort(by: { $0.playCount > $1.playCount })
    
    for (key, value) in sortGenre {
        var count = 0
        for i in songs {
            if count == 2 {
                count = 0
                break
            }
            if i.type == key {
                count += 1
                bestTrack.append(i)
            }
        }
    }
    let result = bestTrack.map { $0.songNumber }
    
    return result
}
