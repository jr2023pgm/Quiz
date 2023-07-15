//
//  TriviaView.swift
//  Quiz
//
//  Created by jr on 15/07/2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        QuestionView()
            .environmentObject(triviaManager)
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
