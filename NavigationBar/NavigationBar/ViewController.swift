//
//  ViewController.swift
//  NavigationBar
//
//  Created by alumincan on 2017/10/21.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cameraButton: UIBarButtonItem!
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(procsseTimer), userInfo: nil, repeats: true)
    }
    @objc func procsseTimer() {
        print("ALucard")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @IBAction func cameraClick(_ sender: UIBarButtonItem) {
        timer.invalidate()
    }


}

