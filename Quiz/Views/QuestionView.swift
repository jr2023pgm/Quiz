//
//  QuestionView.swift
//  Quiz
//
//  Created by jr on 15/07/2023.
//

import SwiftUI

struct QuestionView: View {
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
                Text("Which one of the following rhythm games was made by Harmonix?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
            }
            
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
    }
}

#Preview {
    QuestionView()
}
