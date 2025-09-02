//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy Petrik on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "You are Awesome!"
    @State private var imagetype = ""
    @State private var imagenum = 0
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image("image0")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            
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
//                imagetype = (imagetype == imagetype1 ? imagetype2 : imagetype1)
                
//                if message == message1 {
//                    message = message2
//                    imagetype = "hand.thumbsup"
//                }
//                else {
//                    message = message1
//                    imagetype = "sun.max"
//                TODO: do something
                imagenum += 1
                if imagenum == 10{
                    imagenum = 0
                    
                }
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
