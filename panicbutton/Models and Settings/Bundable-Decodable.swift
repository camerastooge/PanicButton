//
//  Bundable-Decodable.swift
//  panicbutton
//
//  Created by Lucas Barker on 7/7/26.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: ScriptureModel] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to decode bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String: ScriptureModel].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loaded
    }
}
