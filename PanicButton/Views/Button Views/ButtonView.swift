//
//  ButtonView.swift
//  PanicButton
//
//  Created by Lucas Barker on 11/30/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.blue)
                .offset(y: +25)
                
            
            Circle()
                .fill(.red)
                .offset(y: -25)
            
        }
        .padding(25)
    }
}

#Preview {
    ButtonView()
}
