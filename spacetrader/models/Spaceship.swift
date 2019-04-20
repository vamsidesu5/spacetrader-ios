//
//  SpaceShip.swift
//  spacetrader
//
//  Created by Rahul Rajan on 4/19/19.
//  Copyright © 2019 com.vamsi. All rights reserved.
//

import Foundation
class Spaceship {
    var name: String
    var hullStrength: Int;
    var parsecs: Int;
    var cargoMax: Int;
    var quantity: Int;
    var cargoList: [String: Int];
    var sizeCargoList: Int;
    
    init(name: String, parsecs: Int, cargoMax: Int, hullStrength: Int) {
        self.name = name;
        self.parsecs = parsecs;
        self.cargoMax = cargoMax;
        self.hullStrength = hullStrength;
        self.cargoList = [:];
        self.quantity = 0;
        self.parsecs = 0;
        self.sizeCargoList = 0;
    }
    
    
}
