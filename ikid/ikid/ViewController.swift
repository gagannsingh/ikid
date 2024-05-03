//
//  ViewController.swift
//  ikid
//
//  Created by Gagan Singh on 4/29/24.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
      }
    @IBOutlet weak var questionLabel: UILabel!
    var isQuestionShowing = true
    @IBOutlet var punchlineLabel: UILabel!

      func setupLabels() {
        questionLabel.text = "A man walks into a library and asks the librarian for books about paranoia..."
        punchlineLabel.text = "The librarian says look behind you.."
        questionLabel.alpha = isQuestionShowing ? 1.0 : 0.0
        punchlineLabel.alpha = isQuestionShowing ? 0.0 : 1.0
      }
    

    @IBOutlet weak var nextJokeButton: UIButton!
    @IBAction func nextJoke(_ sender: Any) {
        isQuestionShowing.toggle()
        UIView.animate(withDuration: 0.5) { [self] in
            self.questionLabel.alpha = isQuestionShowing ? 1.0 : 0.0
            self.punchlineLabel.alpha = isQuestionShowing ? 0.0 : 1.0
        }
        
        
    }
}
