//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy Petrik on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a Programmer"
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer ()
            
            HStack {
                Button("Click Me!") {
                        message = "Awesome!"
                }
                
                Button("Great!") {
                    message = "Great!"
                }
                }
            .font(.title2)
            .tint(.orange)
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
