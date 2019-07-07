//
//  QuestionBank.swift
//  Quizzie
//
//  Created by Shaon on 7/7/19.
//  Copyright © 2019 Coding Hunt. All rights reserved.
//

import Foundation
struct QuestionBank {
    private var questions = [Question]()
    
    init() {
        questions.append(Question(qs: "What’s the Target Platform of Kotlin?", answerSets: [""], correctAnsPosition: 2))
        questions.append(Question(qs: "What’s init block in Kotlin?", answerSets: [""], correctAnsPosition: 2))
        questions.append(Question(qs: "Is new a keyword in Kotlin??", answerSets: [""], correctAnsPosition: 2))
        questions.append(Question(qs: "What’s a const?", answerSets: [""], correctAnsPosition: 2))
        questions.append(Question(qs: "Kotlin is used for..", answerSets: [""], correctAnsPosition: 2))
    }
}
