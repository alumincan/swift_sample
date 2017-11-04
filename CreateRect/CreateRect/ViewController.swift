//
//  ViewController.swift
//  CreateRect
//
//  Created by alumincan on 2017/11/4.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let greenView = UIView()
        greenView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 100)
//        greenView.backgroundColor = UIColor(displayP3Red: 30/255, green: 50/255, blue: 125/255, alpha: 1);)
//
        greenView.backgroundColor = UIColor(red: 30/255, green: 244/255, blue: 125/255, alpha: 1)
        view.addSubview(greenView)

        let redView = UIView(frame: CGRect(x: 0, y: Int(view.center.y - 50), width: Int(view.frame.width), height: 100))
        redView.backgroundColor = UIColor(red: 255/255, green: 20/255, blue: 20/255, alpha: 1)
        view.addSubview(redView)

        let loginLabel = UILabel(frame: CGRect(x: 0, y: 0, width: Int(view.frame.width), height: 100))
        loginLabel.text = "L O G I N"
        loginLabel.textAlignment = NSTextAlignment.center
        loginLabel.textColor = UIColor.white
        redView.addSubview(loginLabel)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

