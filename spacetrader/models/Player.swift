//
//  Player.swift
//  spacetrader
//
//  Created by Rahul Rajan on 4/19/19.
//  Copyright © 2019 com.vamsi. All rights reserved.
//

import Foundation

class Player {
    
    static let player = Player(playername: "Example", pilot: 4, fighter: 4, trader: 4, engineer: 4, diff: "Hard");
    

   var pilotSkill: Int;
   var fighterSkill: Int;
   var traderSkill: Int;
   var engineerSkill: Int;
   var difficulty: String;
   var credits: Int;
   var ship: Spaceship;
   var name: String

   private init(playername: String, pilot : Int, fighter : Int, trader: Int, engineer : Int, diff : String){
        self.name = playername;
        self.pilotSkill = pilot;
        self.fighterSkill = fighter;
        self.traderSkill = trader;
        self.engineerSkill = engineer;
        self.difficulty = diff;
        self.credits = 1000;
        self.ship = Constants.Gnat;
    }
    

    
    public func updatePlayer(playername: String, pilot : Int, fighter : Int, trader: Int, engineer : Int, diff : String) {
        self.pilotSkill = pilot;
        self.fighterSkill = fighter;
        self.traderSkill = trader;
        self.engineerSkill = engineer;
        self.difficulty = diff;
        self.name = playername;
    }
}
