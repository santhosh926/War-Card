//
//  ViewController.swift
//  WarCardGame
//
//  Created by Santhosh Raghavan on 7/15/19.
//  Copyright © 2019 Santhosh Raghavan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNum)")
        rightImageView.image = UIImage(named: "card\(rightNum)")
        
        if leftNum > rightNum {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        
        else {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    
}

