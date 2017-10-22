//
//  ViewController.swift
//  sampleTimeCounter
//
//  Created by alumincan on 2017/10/22.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var nowTime : Int = 0
    var isTimerStart : Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func updateLable() {
        nowTime += 1
        timerLabel.text = String(nowTime)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stopTimer(_ sender: UIBarButtonItem) {
        timer.invalidate()
        isTimerStart = false    
    }

    @IBAction func playTimer(_ sender: UIBarButtonItem) {
        if !isTimerStart {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateLable), userInfo: nil, repeats: true)
            timer.fire()
            isTimerStart = true
        } else {
            timer.invalidate()
            isTimerStart = false
        }

    }
    @IBAction func refreshTimer(_ sender: UIBarButtonItem) {
        nowTime = 0
        timerLabel.text = String(nowTime)
    }
}

