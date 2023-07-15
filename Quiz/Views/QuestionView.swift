//
//  QuestionView.swift
//  Quiz
//
//  Created by jr on 15/07/2023.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        VStack (spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                
                Spacer()
                
                Text("1 out of 10")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: 40)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("What name was historically used for the Turkish city currently known as Istanbul?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                AnswerRow(answer: Answer(text: "Constantinople", isCorrect: true))
                    .environmentObject(triviaManager)
                AnswerRow(answer: Answer(text: "Adrianople", isCorrect: false))
                    .environmentObject(triviaManager)
            }
            
            PrimaryButton(text: "Next")
            
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        .navigationBarHidden(true)
    }
}

#Preview {
    QuestionView()
        .environmentObject(TriviaManager())
}
