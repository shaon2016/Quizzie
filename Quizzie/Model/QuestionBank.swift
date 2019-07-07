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
        questions.append(Question(qs: "What’s the Target Platform of Kotlin?", answerSets: ["JVM", "GraalVm", "CLR", "HotSpot"], correctAnsPosition: 1))
        questions.append(Question(qs: "What’s init block in Kotlin?", answerSets: ["Finish something", "Initialiser block", "Exit from app", "Resume something"], correctAnsPosition: 2))
        questions.append(Question(qs: "New keyword used in Kotlin?", answerSets: ["Initialize variable", "Open new page","No uses", "Used for initialize"], correctAnsPosition: 3))
        questions.append(Question(qs: "What’s a const?", answerSets: ["A value cann't be changed later", "Value can be changed later", "Variable", "A Class"], correctAnsPosition: 1))
        questions.append(Question(qs: "Kotlin is used for..", answerSets: ["Android", "Web", "IOS", "All of them"], correctAnsPosition: 4))
    }
}
