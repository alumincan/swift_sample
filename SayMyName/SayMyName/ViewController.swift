//
//  ViewController.swift
//  SayMyName
//
//  Created by alumincan on 2017/10/23.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageLable: UILabel!
    @IBAction func saveButton(_ sender: UIButton) {
        UserDefaults.standard.set(nameTextField.text, forKey: "userName")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        if let userName = UserDefaults.standard.object(forKey: "userName")  as? String {
            messageLable.text = "Welcome \n" + userName
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

