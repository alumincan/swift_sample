//
//  ViewController.swift
//  firstAnimation
//
//  Created by alumincan on 2017/11/4.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var notifyView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.notifyView.center.y = self.notifyView.center.y - self.view.frame.height

    }
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1) {
            self.notifyView.center.y = self.notifyView.center.y + self.view.frame.height
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

