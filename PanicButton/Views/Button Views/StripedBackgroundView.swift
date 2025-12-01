//
//  StripedBackgroundView.swift
//  PanicButton
//
//  Created by Lucas Barker on 11/30/25.
//

import SwiftUI

struct StripedBackgroundView: View {
    var body: some View {
        ZStack {
            Color.red
            HStack(spacing: 0) {
                ForEach(0..<101) { x in
                    Rectangle()
                        .fill(.black)
                        .frame(width: 2)
                        .padding(3)
                }
            }
        }
    }
}

#Preview {
    StripedBackgroundView()
}
