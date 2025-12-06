//
//  ContentView.swift
//  PanicButton
//
//  Created by Lucas Barker on 11/9/25.
//

import SwiftUI

struct ContentView: View {
    //Environment properties
    
    //State properties for text view
    @State private var verseText = "For God so loved the world, that he gave his only born Son, that whoever believes in him shold not perish, but have eternal life."
    @State private var verseReference = "John 3:16"
    
    //local properties
    let bibleVerses = Bundle.main.decode("scriptures.json")
    
    var body: some View {
        NavigationStack {
            VStack {
                //ScriptureView
                ZStack {
                    Color.textBackground.opacity(0.8)
                    
                    ScriptureView(verseText: $verseText, verseReference: $verseReference)
                        .padding(15)
                }
                .containerRelativeFrame([.vertical]) { height, _ in
                    return height * 0.5
                }
                
                Spacer()
                
                //ButtonView
                Button {
                    
                } label: {
                    Circle()
                        .fill(.red)
                        .containerRelativeFrame([.vertical]) { width, _ in
                            return width * 0.25
                        }
                }
                
//                Spacer()
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
