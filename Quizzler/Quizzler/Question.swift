//
//  Question.swift
//  Quizzler
//
//  Created by Gizat Makhanov on 9/27/18.
//  Copyright © 2018 Gizat Makhanov. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
    
}
