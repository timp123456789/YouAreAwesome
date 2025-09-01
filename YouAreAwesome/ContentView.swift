//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy Petrik on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "You are Awesome!"
    @State private var imagetype = "swift"
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: imagetype)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer ()
            

            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!!"
                let imagetype1 = "hand.thumbsup"
                let imagetype2 = "sun.max.fill"
                
                message = (message == message1 ? message2 : message1)
                imagetype = (imagetype == imagetype1 ? imagetype2 : imagetype1)
                
//                if message == message1 {
//                    message = message2
//                    imagetype = "hand.thumbsup"
//                }
//                else {
//                    message = message1
//                    imagetype = "sun.max"
//                }
            }
                }
            .font(.title2)
            .tint(.orange)
            .buttonStyle(.borderedProminent)
            
        .padding()
        
    }
}

#Preview {
    ContentView()
}
