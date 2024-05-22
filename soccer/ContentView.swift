//
//  ContentView.swift
//  soccer
//
//  Created by student on 5/8/24.
//

import SwiftUI
import SpriteKit
import UIKit


struct ContentView: View {
    let answers = [       "It is certain",
           "It is decidedly so",
                "Without a doubt",
            "Yes, definitely",
                "You may rely on it",
                "As I see it, yes",
                "Most likely",
                "Outlook good",
                "Yes",
                "Signs point to yes",
                "Reply hazy, try again",
                "Ask again later",
                "Better not tell you now",
                "Cannot predict now",
                "Concentrate and ask again",
                "Don't count on it",
                "My reply is no",
                "My sources say no",
                "Outlook not so good",
                "Very doubtful"]

    @State private var currentAnswer = ""
    @State private var isShaking = false
    @State private var question = ""

    var body: some View {
        VStack {
            Text("Ask a question 😉, click the shake button and I will give you your fortune")
                .font(.headline)
                .padding()
            TextField("Enter your question", text: $question)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Text(currentAnswer)
                .font(.title)
                .foregroundColor(.blue)
                .padding()

            Button(action: {
                self.shake()
            }) {
                Text("Shake!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

        }
        .onAppear {
            self.currentAnswer = "Ask a question..."
        }
        .animation(.default)
    }

    func shake() {
        withAnimation {
            self.isShaking = true
            self.currentAnswer = ""
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                if !self.question.isEmpty {
                    self.currentAnswer = self.answers.randomElement() ?? "No answer"
                } else {
                    self.currentAnswer = "Please enter a question"
                }
                self.isShaking = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
//struct ContentView: View {
//    let answers = ["Yes", "No", "Maybe", "Ask again later", "Definitely", "Try again", "Outlook not so good"]
//
//    @State private var currentAnswer = ""
//    @State private var isShaking = false
//
//    var body: some View {
//        VStack {
//            Text("Ask a question:")
//                .font(.headline)
//                .padding()
//
//            Text(currentAnswer)
//                .font(.title)
//                .foregroundColor(.blue)
//                .padding()
//
//            Button(action: {
//                self.shake()
//            }) {
//                Text("Shake!")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            }
//            .padding()
//
//        }
//        .onAppear {
//            self.currentAnswer = "Ask a question..."
//        }
//        .animation(.default)
//    }
//
//    func shake() {
//        withAnimation {
//            self.isShaking = true
//            self.currentAnswer = ""
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.currentAnswer = self.answers.randomElement() ?? "No answer"
//                self.isShaking = false
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


//
//struct ContentView: View {
//    
//    
    
//    @State private var fortune: String = ""
//    
//    let fortunes = [
//        "It is certain",
//        "It is decidedly so",
//        "Without a doubt",
//        "Yes, definitely",
//        "You may rely on it",
//        "As I see it, yes",
//        "Most likely",
//        "Outlook good",
//        "Yes",
//        "Signs point to yes",
//        "Reply hazy, try again",
//        "Ask again later",
//        "Better not tell you now",
//        "Cannot predict now",
//        "Concentrate and ask again",
//        "Don't count on it",
//        "My reply is no",
//        "My sources say no",
//        "Outlook not so good",
//        "Very doubtful"
//    ]
//    var body: some View {
//        VStack {
//            Text("Ask a the magic ball")
//                .font(.title)
//                .padding()
//            Button(action: {
//                self.generatePrediction()
//            }) {
//                Text("Shake")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            }
//            Text(prediction)
//                .font(.title)
//                .padding()
//        }
//
//
//    
//
////#Preview
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//
//}
//
//////
////#Preview {
////    ContentView()
////  


