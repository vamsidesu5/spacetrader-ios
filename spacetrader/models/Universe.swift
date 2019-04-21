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
    var MAXSOLARSYSTEM : Int = 15;
    
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
//        generateSystemNames()
//        scatterSystemLocations()
        generateTechLevels()
        generatePoliticalSystems()
        //solarSystems = new SolarSystem[MAXSOLARSYSTEM];
        //var content = "";
        for i in 0...systems.count {
            let sys = systems[i];
            let locat =  locations[i];
            let x = locat.x;
            let y = locat.y;
            solarSystems.append(SolarSystem(name: sys, location: locat, techLevel: actualLevels[i], resources: actualResources[i]));
        }
    }
    
    func generateTechLevels() {
        var actualLevels : [TechLevel]
        for i in 0...MAXSOLARSYSTEM-1 {
            actualLevels.append(Constants.arrTechLevel[Int.random(in: 0 ... Constants.arrTechLevel.count)])
        }
    }
    
    func generatePoliticalSystems() {
        var actualResources : [Resources];
        for i in 0...MAXSOLARSYSTEM-1 {
            actualResources.append(Resources.allCases[Int.random(in: 0 ... Constants.arrTechLevel.count)])
        }
    func generateSystemNames() {
        let max = Constants.solarSystemNames.count
        let min = 0;
        
        var systemSet: Set<String> = []
        while systemSet.count != Constants.MAXSOLARSYSTEM {
            let num = Int.random(in: min ..< max)
            systemSet.insert(Constants.solarSystemNames[num])
        }
        systems = Array(systemSet)
    }
    
    func scatterSystemLocations() {
        let max = 150;
        let min = 0;
        
        var locationSet: Set<Location> = []
        while locationSet.count != Constants.MAXSOLARSYSTEM {
            let x = Int.random(in: min ..< max)
            let y = Int.random(in: min ..< max)
            locationSet.insert(Location(x: x,y: y))
        }
        locations = Array(locationSet)
    }
}
