//
//  ScriptureView.swift
//  PanicButton
//
//  Created by Lucas Barker on 11/9/25.
//

import SwiftUI

struct ScriptureView: View {
    @Binding var verseText: String
    @Binding var verseReference: String
    
    var body: some View {
        ZStack {
            Text(verseText)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack {
                Spacer()
                Text(verseReference)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .font(.subheadline.bold())
            }
        }
    }
}

#Preview {
    @Previewable @State var verseText = "For God so loved the world, that he gave his only born Son, that whoever believes in him shold not perish, but have eternal life."
    @Previewable @State var verseReference = "John 3:16"
    ScriptureView(verseText: $verseText, verseReference: $verseReference)
}
