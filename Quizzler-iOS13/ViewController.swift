//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var index : Int = 0
    var progress : Float = 0.25
    
    var score : Int = 0
    
    let quiz = [
        Question(text: "Is whale a mammal ? ", answer: "True"),
        Question(text:"Was rome built in one day ?", answer: "False"),
        Question(text: "Can chess be played with only one player ? ", answer: "False"),
        Question(text: "Are tigers and cats related ? ", answer: "True")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        //update the score
        updateScore(answer : sender.currentTitle!)
        
        // increase the index and progress
        if(index < 3){
            index+=1
            progress+=0.25
            updateUI()
        }else {
            questionLabel.text = "Your score is \(score)"
        }
    }
    
    func updateUI(){
        progressBar.progress = progress
        questionLabel.text = quiz[index].text
    }
    
    func updateScore(answer : String){
        if(answer == quiz[index].answer){
            score+=1
        }
    }
    
}

