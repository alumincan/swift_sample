//
//  ViewController.swift
//  Dice-Games
//
//  Created by alumincan on 2017/10/15.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceArray = ["Dice1", "Dice2", "Dice3", "Dice4", "Dice5", "Dice6"]
    @IBAction func rollButton(_ sender: UIButton) {
        randomDiceIndex1 = Int (arc4random_uniform(UInt32(diceArray.count)));
        randomDiceIndex2 = Int (arc4random_uniform(UInt32(diceArray.count)));
        //diceImageView1.image = UIImage(named: "Dice\(randomDiceIndex1 + 1)");
        //diceImageView2.image = UIImage(named: "Dice\(randomDiceIndex2 + 1)");
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        //print("Dice 1 = \(randomDiceIndex1 + 1), Dice 2 = \(randomDiceIndex2 + 1)");

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

