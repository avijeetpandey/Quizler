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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "Is whale a mammal ? "
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if(sender.currentTitle! == "True"){
            print("Thats correct")
        }else{
            print("Oops! wrong answer")
        }
    }
    
}

