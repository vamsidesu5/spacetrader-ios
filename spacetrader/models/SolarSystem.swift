//
//  SolarSystem.swift
//  spacetrader
//
//  Created by Rahul Rajan on 4/19/19.
//  Copyright © 2019 com.vamsi. All rights reserved.
//

import Foundation

class SolarSystem {
//    private final String systemName;
//    private Location location;
//    private TechLevel techLevel;
//    private Resources resources;
//    private final List<TradeGood> listofResources;
    var systemName: String;
    var location: Location;
    var techLevel: TechLevel;
    var resources: Resources;
    var tradeGoods: [TradeGood];
    
    init(name: String, location: Location, techLevel: TechLevel, resources: Resources, listOfGoods: [TradeGood]) {
        self.systemName = name;
        self.location = location;
        self.techLevel = techLevel;
        self.resources = resources;
        self.tradeGoods = listOfGoods;
    }
}
