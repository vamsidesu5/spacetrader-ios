//
//  Location.swift
//  spacetrader
//
//  Created by Rahul Rajan on 4/19/19.
//  Copyright © 2019 com.vamsi. All rights reserved.
//

import Foundation

class Location: Hashable {
    var x: Int;
    var y: Int;
    static func ==(lhs: Location, rhs: Location) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    var hashValue: Int {
        return x*y
    }
    init(x: Int, y: Int) {
        self.x = x;
        self.y = y;
    }
}
