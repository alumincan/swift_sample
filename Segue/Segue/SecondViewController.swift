//
//  SecondViewController.swift
//  Segue
//
//  Created by alumincan on 2017/10/23.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var message : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        messageLabel.text = message
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
