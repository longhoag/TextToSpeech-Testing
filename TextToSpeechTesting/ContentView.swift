//
//  ContentView.swift
//  TextToSpeechTesting
//
//  Created by Long Hai on 10/15/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var inputString = "Hello world! My name is Ryan"
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $inputString)
                .textFieldStyle(.roundedBorder)
            
            Button("Text to speech") {
                let utterance = AVSpeechUtterance(string: inputString)
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                utterance.pitchMultiplier = 2.0
                utterance.rate = 0.3
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
