//
//  Question.swift
//  Quizzie
//
//  Created by Shaon on 7/7/19.
//  Copyright © 2019 Coding Hunt. All rights reserved.
//

import Foundation
struct Question {
    private(set) public var qs : String
    private(set) public var answerSets : Array<String>
    private(set) public var correctAnsPosition : Int
    
    init(qs : String, answerSets : Array<String>, correctAnsPosition : Int) {
        self.qs = qs
        self.answerSets = answerSets
        self.correctAnsPosition = correctAnsPosition
    }
}
