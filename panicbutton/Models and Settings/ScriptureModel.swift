//
//  ScriptureModel.swift
//  panicbutton
//
//  Created by Lucas Barker on 7/7/26.
//

import Foundation

class ScriptureModel: Codable, Identifiable {
    let reference: String
    let text: String
    var id: String
    
    init(reference: String, text: String) {
        self.id = { reference }()
        self.reference = reference
        self.text = text
    }
}

