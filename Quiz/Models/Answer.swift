//
//  Answer.swift
//  Quiz
//
//  Created by jr on 15/07/2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
