//
//  ViewController.swift
//  Segue
//
//  Created by alumincan on 2017/10/23.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputMessage: UITextField!
    @IBAction func jumpButton(_ sender: UIButton) {
        performSegue(withIdentifier: "jump2secondView", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "jump2secondView" {
            let desViewController =  segue.destination as! SecondViewController
            desViewController.message = inputMessage.text
        }
    }

}

