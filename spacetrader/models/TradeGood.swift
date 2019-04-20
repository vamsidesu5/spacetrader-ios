//
//  TradeGood.swift
//  spacetrader
//
//  Created by Rahul Rajan on 4/19/19.
//  Copyright © 2019 com.vamsi. All rights reserved.
//

import Foundation

class TradeGood {
    var  basePrice: Double;
    var  MTLP: Int;
    var  MTLU: Int;
    var  TTP: Int;
    var  IPL: Int;
    var  variance: Int;
    var  name: String;
    var  IE: Bool;
    var  CR: Bool;
    var  ER: Bool;
    var  MTL: Int;
    var  MTH: Int;
    var  currentPrice: Double;

    init(name: String, MTLP: Int, MTLU: Int, TTP: Int, basePrice: Double, IPL: Int, variance: Int) {
        self.basePrice = basePrice;
        self.MTLP = MTLP;
        self.MTLU = MTLU;
        self.TTP = TTP;
        self.IPL = IPL;
        self.variance = variance;
        self.name = name;
        self.currentPrice = 0;
    }
}
