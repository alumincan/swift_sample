//
//  ElecticCar.swift
//  ClassAndObject
//
//  Created by alumincan on 2017/10/21.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation


class ElecticCar: Car {
    var powerFrom : String = "Electic"
    var destination : String?
    override init() {
        super.init()
        print("Electic car inti")
    }
}
