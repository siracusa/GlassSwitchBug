//
//  ContentView.swift
//  GlassSwitchBug
//
//  Created by Developer on 6/21/25.
//

import SwiftUI

struct ContentView: View {
    @State var tinted = false

    var body: some View {
        VStack {
            Spacer()

            Text(tinted ? "Tinted" : "Not Tinted")
                .font(.headline)

            Button("Toggle Tint") {
                tinted.toggle()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)

            Spacer()
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(
            Rectangle()
                .fill(.clear)
                // BUG EXPLANATION
                //
                // After the tinted boolean is toggled to true once, this
                // glass effect will ALWAYS appear tinted, even when the
                // tinted boolean is set back to false.
                .glassEffect(tinted ? .regular.tint(.teal) : .regular, in: .containerRelative)
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .top
                )
                .padding()
        )
    }
}

#Preview {
    ContentView()
}
