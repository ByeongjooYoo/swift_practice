//
//  방금그곡.swift
//  Swift_practice
//
//  Created by ByeongJu Yu on 2021/10/22.
//

import Foundation

struct Music {
    let playTime: Int
    let name: String
    var song: String
}

func solution(_ m:String, _ musicinfos:[String]) -> String {
    var result: [Music] = []
    var musicInfos: [Music] = []
    let memory = convertStr(m)
    for music in musicinfos {
        let info = music.components(separatedBy: ",")
        let playTime = calculateTime(info[0], info[1])
        let song = repeatMusic(playTime, info[3])
        musicInfos.append(Music(playTime: playTime, name: info[2], song: song))
    }
    for music in musicInfos {
        if music.song.contains(memory) {
            result.append(music)
        }
    }
    result.sort { $0.playTime > $1.playTime }
    return result.isEmpty ? "(None)" : result[0].name
}

func calculateTime(_ startTime: String, _ endTime: String) -> Int {
    let start = startTime.components(separatedBy: ":").map { Int($0)! }
    let end = endTime.components(separatedBy: ":").map { Int($0)! }
    let result = (end[0] - start[0]) * 60 + end[1] - start[1]
    return result
}

func repeatMusic(_ playTime: Int, _ music: String) -> String {
    var repeatedMusic = ""
    let song = convertStr(music)
    let musicTime = song.count
    repeatedMusic += String(repeating: song, count: (playTime / musicTime))
    repeatedMusic += song.dropLast(musicTime - (playTime % musicTime))
    return repeatedMusic
}

func convertStr(_ song: String) -> String {
    var result = song
    let notes = [("C#","c"), ("A#","a"), ("D#","d"), ("F#","f"), ("G#","g")]
    for note in notes {
        result = result.replacingOccurrences(of: note.0, with: note.1)
    }
    return result
}
