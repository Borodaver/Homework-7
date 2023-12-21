//
//  AudioFile.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class AudioFile {
    let format: String
    
    init(format: String) {
        self.format = format
    }
    
    func play() {
        fatalError("Error")
    }
}

class MP3File: AudioFile {
    override func play() {
        print("Playing \(format) audio file")
    }
}

class WAVFile: AudioFile {
    override func play() {
        print("Playing \(format) audio file")
    }
}
