//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Md. Abdul Ahad Chowdhury on 29/6/18.
//  Copyright © 2018 Maacintosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    @IBAction func grillButtonClicked(_ sender: UIButton) {
        ballImageView.image = UIImage(named: allBallImages[Int(arc4random_uniform(5))])
    }
    
    let allBallImages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ballImageView.image = UIImage(named: allBallImages[Int(arc4random_uniform(5))])
    }
}

