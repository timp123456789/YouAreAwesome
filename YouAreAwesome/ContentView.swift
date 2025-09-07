//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Timothy Petrik on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imagetype = ""
    @State private var imagenum = 0
    @State private var messagenum = 0
    @State private var lastMessageNum = -1
    @State private var lastImageNum = -1
    var body: some View {
        
        VStack {
            
            Spacer()
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 120)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imagetype)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imagetype)
            
            
            Spacer ()
            

            Button("Press Me!") {
                let message1 = ["You are Awesome!", "You are Great!!", "You Are Fantastic", "Fabulous, Thats You?", "ewbfgfeigweiufhefuiwyguiyefwyefbgwfjehbjhbfewhbeuwfbkwefjbhwbfejhbef"]
//                let message2 = "You are Great!!"
//                let message3 = "Fabulous, Thats You?"
                var messageNumber = Int.random(in: 0...message1.count-1)
                while messageNumber == lastMessageNum {
                    messageNumber = Int.random(in: 0...message1.count-1)
                }
                message = message1[messageNumber]
                lastMessageNum = messageNumber
                
                var imageNumber = Int.random(in: 0...3)
                while imageNumber == lastImageNum {
                    imageNumber = Int.random(in: 0...3)
                }
                imagetype = "image\(imageNumber)"
                lastImageNum = imageNumber
//                message = message1[messagenum]
//                messagenum += 1
//                if messagenum == message1.count {
//                    messagenum = 0
//                }
                
//                message = (message == message1 ? message2 : message1)
//                imagetype = "image\(Int.random(in: 0...3))"
                
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
                if imagenum == 4{
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
