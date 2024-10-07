//
//  ContentView.swift
//  appOne
//
//  Created by Xiaopu on 9/6/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack {
            Button{
                speak(text: "Hello world")
            } label: {
                Text("Hello world")
                    .fontWeight(.bold)
                    .font(.system(.title, design:.rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(20)
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Stay Hungry, Stay Foolish")
                .fontWeight(.heavy)
                .font(.system(.title,design:.rounded))
            
            Button{
                speak(text: "Happy Programming")
            } label: {
                Text("Happy Programming")
                    .fontWeight(.bold)
                    .font(.system(.title, design:.rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(20)
        }
        .padding()
    }
}

func speak(text: String) {
    //specifies the text
    let utterance = AVSpeechUtterance(string: text)
    //sets the voice to British English
    utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
    //create the speech synthesizer with the chosen voice
    let synthesizer = AVSpeechSynthesizer()
    //speak out the text with the chosen voice
    synthesizer.speak(utterance)
}

#Preview {
    ContentView()
}
