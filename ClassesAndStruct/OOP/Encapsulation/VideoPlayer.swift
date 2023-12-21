//
//  VideoPlayer.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class VideoPlayer {
    private var isPlaying = false
    
    func play() {
        isPlaying = true
        // Логика запуска видео
    }
    
    func pause() {
        isPlaying = false
        // Логика паузы видео
    }
    
    func isVideoPlaying() -> Bool {
        return isPlaying
    }
}


