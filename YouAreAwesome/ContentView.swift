//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy Petrik on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("I am a Developer!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.red)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
