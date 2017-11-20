//
//  ViewController.swift
//  CoreDataAppSample
//
//  Created by alumincan on 2017/11/20.
//  Copyright © 2017年 sample. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var users : [Users] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

//        let users = Users(context: context)
//        users.age = 22
//        users.username = "Alucard"
//        users.password = "1234"
//
//        do {
//            try context.save()
//            print("context save")
//        } catch  {
//            print("context save failed")
//        }

        let fetchRequest = NSFetchRequest<Users>(entityName: "Users")
        fetchRequest.returnsObjectsAsFaults = false
        do {
            users = try context.fetch(fetchRequest)
            print(users)
        } catch {
            print("No")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

