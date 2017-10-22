//
//  ViewController.swift
//  TableViewDemo
//
//  Created by alumincan on 2017/10/22.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    var cellColletction = ["alu", "yiting", "momo", "lulu"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return cellColletction.count
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        //cell.textLabel?.text = cellColletction[indexPath.row]
        cell.textLabel?.text = String(indexPath.row + 1)
        return cell
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

