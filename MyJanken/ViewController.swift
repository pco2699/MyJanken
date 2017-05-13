//
//  ViewController.swift
//  MyJanken
//
//  Created by pco2699 on 2017/05/11.
//  Copyright © 2017年 pco2699. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBOutlet weak var answerImageView: UIImageView!
  @IBOutlet weak var answerLabel: UILabel!
  
  // じゃんけん(数字)
  var answerNumber:UInt32 = 0
  @IBAction func shuffleAction(_ sender: Any) {
    answerNumber = arc4random_uniform(3)
    
    if answerNumber == 0 {
      answerLabel.text = "グー"
      answerImageView.image = UIImage(named: "gu")
    }
    else if answerNumber == 1 {
      answerLabel.text = "チョキ"
      answerImageView.image = UIImage(named: "choki")
    }
    else if answerNumber == 2 {
      answerLabel.text = "パー"
      answerImageView.image = UIImage(named: "pa")
    }
    
  }
}

