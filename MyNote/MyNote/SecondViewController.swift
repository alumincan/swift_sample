//
//  SecondViewController.swift
//  MyNote
//
//  Created by alumincan on 2017/10/25.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func addEventButton(_ sender: Any) {
        if  textField.text == "" { return}
        var eventItem : [String]
        let items = UserDefaults.standard.object(forKey: "Events")
        if let tempItem = items as? [String] {
            eventItem = tempItem
            eventItem.append(textField.text!)
        } else {
                eventItem = [textField.text!]
        }
        print(eventItem)
        UserDefaults.standard.setValue(eventItem, forKey: "Events")
        textField.text! = ""
    }
}

