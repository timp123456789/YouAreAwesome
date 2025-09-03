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
    @State private var messagenum = 0
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(imagetype)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            Spacer ()
            

            Button("Press Me!") {
                let message1 = ["You are Awesome!", "You are Great!!", "You Are Fantastic", "Fabulous, Thats You?", "You make me Smile all the time"]
//                let message2 = "You are Great!!"
//                let message3 = "Fabulous, Thats You?"
                message = message1[messagenum]
                messagenum += 1
                if messagenum == message1.count {
                    messagenum = 0
                }
                
//                message = (message == message1 ? message2 : message1)
                imagetype = "image\(imagenum)"
                
//                if message == message1[0] {
//                    message = message1[1]
//                } else if message == message1[1] {
//                    message = message1[2]
//                } else if message == message1[2] {
//                    message = message1[3]
//                }
//                else {
//                    message = message1[0]
//                }

//                TODO: do something
                imagenum += 1
                if imagenum == 2{
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
