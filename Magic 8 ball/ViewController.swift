//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Osvaldo Murillo on 10/19/18.
//  Copyright © 2018 Osvaldo Murillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallNumber : Int = 0
    
    let ballArray = ["ball2", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImageBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateImageBall()
        
    }
    
    func updateImageBall(){
        
        randomBallNumber = Int(arc4random_uniform(5))
        print(randomBallNumber)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImageBall()
    }
    
   
}

