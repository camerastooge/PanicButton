//
//  ContentView.swift
//  PanicButton
//
//  Created by Lucas Barker on 11/9/25.
//

import SwiftUI

struct ContentView: View {
    var verseText = "For God so loved the world, that he gave his only born Son, that whoever believes in him shold not perish, but have eternal life."
    var verseReference = "John 3:16"
    
    var body: some View {
        VStack {
            //ScriptureView
            ScriptureView(verseText: verseText, verseReference: verseReference)
            
            //ButtonView
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
