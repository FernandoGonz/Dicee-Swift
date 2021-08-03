//
//  ViewController.swift
//  dicee-Swift
//
//  Created by Fernando Guerrero G on 28/07/21.
// Resources App breweary https://www.appbrewery.co/p/ios-course-resources/
//

// Repositorio https://github.com/FernandoGonz/Dicee-Swift.git

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI (User Interface) element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceeValue: Array<UIImage> = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    var leftDice = 0
    var rightDice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set a new image
        // diceImageView1.image = Image Literal
        
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        print("Button got tapped")
        
        leftDice = Int.random(in: 0..<6)
        rightDice = Int.random(in: 0..<6)
        
        diceImageView1.image = diceeValue[leftDice]
        diceImageView2.image = diceeValue[rightDice]
    }
    
}

