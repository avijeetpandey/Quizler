//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var index : Int = 0
    var progress : Float = 0.25
    var score : Int = 0
    
    let quiz = [
        Question(q: "Is whale a mammal ? ", a: "True"),
        Question(q:"Was rome built in one day ?", a: "False"),
        Question(q: "Can chess be played with only one player ? ", a: "False"),
        Question(q: "Are tigers and cats related ? ", a: "True")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let actualAnswer = quiz[index].answer
        let userAnswer = sender.currentTitle!
                
        // increase the index and progress
            if actualAnswer == userAnswer {
                sender.backgroundColor = UIColor.green
                updateScore()
            }else{
                sender.backgroundColor = UIColor.red
            }
        
        timer = Timer.scheduledTimer(timeInterval: 0.2 ,target: self,selector: #selector(updateUI),userInfo: nil,repeats: false)
    }
    
   @objc func updateUI(){
        progressBar.progress = progress
        questionLabel.text = quiz[index].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        index+=1
    }
    
    func updateScore(){
       score+=1
    }
    
    
}

