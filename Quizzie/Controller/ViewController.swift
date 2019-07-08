//
//  ViewController.swift
//  Quizzie
//
//  Created by Shaon on 7/7/19.
//  Copyright © 2019 Coding Hunt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var allQuestions = QuestionBank()
    private var currentQuestionPosition = 0
    private var pickedAnswerPosition = 0
    
    @IBOutlet weak var QuestionTextLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var firstAnswerBtnLabel: UIButton!
    @IBOutlet weak var secondAnswerBtnLabel: UIButton!
    @IBOutlet weak var thirdAnswerBtnLabel: UIButton!
    @IBOutlet weak var fourthAnswerBtnLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewAtFirstTime()
    }
    
   private func viewAtFirstTime() {
        let question = allQuestions.questions[currentQuestionPosition]
        QuestionTextLabel.text = question.qs
        scoreLabel.text = "Score: 0"
        firstAnswerBtnLabel.setTitle(question.answerSets[0], for: .normal)
        secondAnswerBtnLabel.setTitle(question.answerSets[1], for: .normal)
        thirdAnswerBtnLabel.setTitle(question.answerSets[2], for: .normal)
        fourthAnswerBtnLabel.setTitle(question.answerSets[3], for: .normal)
    
    }
    
    @IBAction func restartGame(_ sender: UIButton) {
        currentQuestionPosition = 0
        viewAtFirstTime()
    }

    // Four answer button added to this action.
    // Answer will be taken using tag. It will helps us to detect which answer user selected
    @IBAction func answerPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            pickedAnswerPosition = 0
        case 2:
            pickedAnswerPosition = 1
        case 3:
            pickedAnswerPosition = 2
        case 4:
            pickedAnswerPosition = 3
        default:
            pickedAnswerPosition = 0
        }
        
        checkAnswer()
    }
    
    private func checkAnswer() {
        let correctAnswerPosition = allQuestions.questions[currentQuestionPosition].correctAnsPosition
        
        if correctAnswerPosition == pickedAnswerPosition {
            print("Got it!")
        }
        else {
            print("Oops! Worng")
        }
    }
}

