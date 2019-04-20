//
//  Universe.swift
//  spacetrader
//
//  Created by Rahul Rajan on 4/19/19.
//  Copyright © 2019 com.vamsi. All rights reserved.
//

import Foundation

class Universe {
    
    // MARK: - Properties
    
    static let universe = Universe();
    // MARK: -
    
    var locations: [Location];
    var actualLevels: [TechLevel];
    var actualResources: [Resources];
    var solarSystems: [SolarSystem];
    var systems: [String];
    
//    private List<Location> locations;
//    private List<TechLevel> actualLevels;
//    private List<Resources> actualResources;
    
//    private List<SolarSystem> solarSystems;
    
    
    // Initialization
    
    private init() {
        self.locations = []
        self.actualLevels = []
        self.actualResources = []
        self.solarSystems = []
        self.systems = []
        
    }
    
    func generateUniverse() {
        
    }
    
}
