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
    
    let quiz = [
        "Is whale a mammal ?",
        "Was rome built in one day ?",
        "Can chess be played with only one player ? ",
        "Are tigers and cats related ? "
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = progress
        questionLabel.text = quiz[index]
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // increase the index and progress
        if(index < 3){
            index+=1
            progress+=0.25
            questionLabel.text = quiz[index]
            progressBar.progress = progress
        }else {
            questionLabel.text = "Congrats! you completed the quiz"
        }
    }
    
}

