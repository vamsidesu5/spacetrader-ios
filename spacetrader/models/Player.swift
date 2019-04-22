//
//  Player.swift
//  spacetrader
//
//  Created by Rahul Rajan on 4/19/19.
//  Copyright © 2019 com.vamsi. All rights reserved.
//

import Foundation

class Player {
    
   static let player = Player()
    

   var pilotSkill: Int;
   var fighterSkill: Int;
   var traderSkill: Int;
   var engineerSkill: Int;
   var difficulty: String;
   var credits: Int;
   var ship: Spaceship;
   var name: String

   private init(playername: String, pilot : Int, fighter : Int, trader: Int, engineer : Int, diff : String){
        name = playername;
        pilotSkill = pilot;
        fighterSkill = fighter;
        traderSkill = trader;
        engineerSkill = engineer;
        difficulty = diff;
        credits = 1000;
        //ship =
    }
    
    private init(){
        
    }*/
}
