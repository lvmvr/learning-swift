//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Loads initial first question...
        //let firstQuestion = allQuestions.list[0]
        // questionLabel.text = firstQuestion.questionText
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        // Simply establishes boolean values (true/ false) for each UIButton.
        // No "else" statement, since default tag # for all elements is "0"
        // pickedAnswer set to default value of 'false'...
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        
        // Take full view width divided by number of questions...
        // ...Then multiply by the value of questionNumber as it increases
        // Must convert to CGFloat, also add one since it starts at zero

        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        
        // Starts from 1st question...
        // Add question text and update UI for score and progress labels.
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            // Restart the quiz
            let alert = UIAlertController(title: "Awesome Job!", message: "You've scored \(score) points. Would you like to play again?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        // Pulls answer property from array item...
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct!")
            score += 1
        } else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    func startOver() {
        questionNumber = 0 // Initiates logic for nextQuestion func...
        score = 0
        nextQuestion()
    }
    

    
}
