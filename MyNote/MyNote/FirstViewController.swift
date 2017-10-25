//
//  FirstViewController.swift
//  MyNote
//
//  Created by alumincan on 2017/10/25.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    var Items : [String] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let items = UserDefaults.standard.object(forKey: "Events")
        if  let tempItems = items as? [String] {
            Items = items as! [String]
            return tempItems.count
        }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = Items[indexPath.row]
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
    override func viewDidAppear(_ animated: Bool) {
        let items = UserDefaults.standard.object(forKey: "Events")
        if  let tempItems = items as? [String] {
            Items = tempItems
        }
        table.reloadData()
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            //Items.remove(at: indexPath.row)
            Items.remove(at: indexPath.row)
            print("aaaaa")
            print(Items)
            UserDefaults.standard.set(Items, forKey: "Events")
            table.reloadData()

        }
    }


}

