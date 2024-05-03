//
//  PunViewController.swift
//  ikid
//
//  Created by Gagan Singh on 5/1/24.
//

import UIKit

class PunViewController: UIViewController {
    
    
    @IBOutlet weak var knockLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    
    let knockKnockJoke = [
            "Start: Knock knock.",
            "Who's there?",
            "Interrupting cow.",
            "Interrupting cow wh-",
            "Mooo..",
        ]
        var jokeIndex = 0
        let knockKnockFont = UIFont(name: "AvenirNextCondensedDemiBold", size: 15.0)
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            knockLabel.text = knockKnockJoke[0]
            knockLabel.font = knockKnockFont
            knockLabel.layer.shadowColor = UIColor.gray.cgColor
            knockLabel.layer.shadowOffset = CGSize(width: 3.0, height: 2.0)
            knockLabel.layer.shadowOpacity = 0.7
            knockLabel.layer.shadowRadius = 2.5
          }
        
    @IBAction func nextButtonClicked(_ sender: Any) {
        jokeIndex += 1

        if jokeIndex >= knockKnockJoke.count {
          jokeIndex = 0 // Reset index to start again
        }
        let currentText = knockKnockJoke[jokeIndex]
            knockLabel.text = currentText
    }

}
