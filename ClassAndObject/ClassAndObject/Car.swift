//
//  Car.swift
//  ClassAndObject
//
//  Created by alumincan on 2017/10/20.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

enum CarType {
    case Van
    case SUV
    case SportCar
}

public class Car {
    
    private var color = "white"
    private var numOfSeat = 5

    var carType = CarType.SportCar

    func drive()  {
        print("Alucard is driving")

    }
    func getColor() -> String {
        return String(color)
    }
    init() {
        color = "yellow"
        print("Change color tp yellow")
    }
}
