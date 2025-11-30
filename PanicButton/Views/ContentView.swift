//
//  ContentView.swift
//  PanicButton
//
//  Created by Lucas Barker on 11/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var verseText = "For God so loved the world, that he gave his only born Son, that whoever believes in him shold not perish, but have eternal life."
    @State private var verseReference = "John 3:16"
    
    var body: some View {
        NavigationStack {
            VStack {
                //ScriptureView
                ScriptureView(verseText: $verseText, verseReference: $verseReference)
                    .padding(.horizontal, 15)
                
                Spacer()
                
                //ButtonView
                VStack {
                    Text("Placeholder")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Panic Button")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContentView()
}
