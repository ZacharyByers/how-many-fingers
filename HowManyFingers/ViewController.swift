//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Zachary Byers on 1/30/18.
//  Copyright © 2018 Zachary Byers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var guessField: UITextField!
  
  @IBOutlet weak var answerField: UILabel!
  
  @IBAction func guessButton(_ sender: Any) {
    if let guess = Int(guessField.text!) {
      let randNum = arc4random_uniform(6)
      if guess == randNum {
        answerField.text = "Correct!"
      } else {
        answerField.text = "Nope, it was \(randNum)"
      }
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

