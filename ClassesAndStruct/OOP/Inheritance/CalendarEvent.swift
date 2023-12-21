//
//  CalendarEvent.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class CalendarEvent {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    func displayInfo() {
        fatalError("Error")
    }
}

class Meeting: CalendarEvent {
    let participants: [String]
    
    init(title: String, participants: [String]) {
        self.participants = participants
        super.init(title: title)
    }
    
    override func displayInfo() {
        print("Meeting: \(title) with participants: \(participants.joined(separator: ", "))")
    }
}

class Reminder: CalendarEvent {
    let deadline: String
    
    init(title: String, deadline: String) {
        self.deadline = deadline
        super.init(title: title)
    }
    
    override func displayInfo() {
        print("Reminder: \(title), deadline: \(deadline)")
    }
}


