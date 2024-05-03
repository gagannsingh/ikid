//
//  DadViewController.swift
//  ikid
//
//  Created by Gagan Singh on 5/3/24.
//

import UIKit

class DadViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "dadJoke.jpeg")

        // Initially hide second image
        image2.alpha = 0.0
    }
    
    @IBOutlet weak var nextButton: UIButton!
    @IBAction func buttonClicked(_ sender: Any) {
        // Swap image visibility
        UIView.transition(with: view, duration: 0.5, options: [.transitionCrossDissolve, .curveEaseInOut], animations: {
          self.image.alpha = 0.0
          self.image2.alpha = 1.0
        })
    }
    


}
