//
//  ViewController.swift
//  HelloWorld
//
//  Created by alumincan on 2017/10/11.
//  Copyright © 2017年 sample. All rights reserved.
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
    @IBAction func showMessage() {
        let alertController = UIAlertController(
            title: "Welcome to Hotel California",
            message: "Hello world",
            preferredStyle: UIAlertControllerStyle.alert
        )
        alertController.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.default,
                handler: nil
            )
        )
        present(alertController, animated: true, completion: nil)
    }

}

