//
//  LogEntryModel.swift
//  panicbutton
//
//  Created by Lucas Barker on 7/7/26.
//

import SwiftUI
import SwiftData

enum Status {
    case actedOutAfterEngaging, actedOutWithoutEngaging, clean, triggeredButNotActed
    
    var incidentColor: Color {
        switch self {
        case .actedOutAfterEngaging: Color.yellow
        case .actedOutWithoutEngaging: Color.red
        case .clean: Color.green
        case .triggeredButNotActed: Color.blue
        }
    }
}

enum EmotionalState {
    case anger, boredom, disgust, excitement, fear, guilt, happiness, pride, relief, sadness, shame, surprise
    
    var emotionalState: String {
        switch self {
        case .anger: "Anger"
        case .boredom: "Boredom"
        case .disgust: "Disgust"
        case .excitement: "Excitement"
        case .fear: "Fear"
        case .guilt: "Guilt"
        case .happiness: "Happiness"
        case .pride: "Pride"
        case .relief: "Relief"
        case .sadness: "Sadness"
        case .shame: "Shame"
        case .surprise: "Surprise"
        }
    }
}

enum Location {
    case home, school, store, work, other
    
    var incidentLocation: String {
        switch self {
        case .home: "Home"
        case .school: "School"
        case .store: "Store"
        case .work: "Work"
        case .other: "Other"
        }
    }
}

@Model
class LogEntryModel: Identifiable {
    private(set) var id: Date
    var status: Status
    var emotionalState: EmotionalState
    var location: Location
    var locationIfOtherSelected: String?
    
    init(id: Date, status: Status, emotionalState: EmotionalState, location: Location) {
        self.id = Date.now
        self.status = status
        self.emotionalState = emotionalState
        self.location = location
    }
}
