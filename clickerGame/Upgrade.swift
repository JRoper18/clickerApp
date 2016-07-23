//
//  Upgrade.swift
//  clickerGame
//
//  Created by Jack Roper on 7/23/16.
//  Copyright © 2016 Jack Roper. All rights reserved.
//

import Foundation

class Upgrade{
    var cost: Int;
    var upgrade: Int;
    var image : String;
    var name: String;
    init(cost: Int, upgrade: Int, image: String, name: String){
        self.cost = cost;
        self.upgrade = upgrade;
        self.image = image;
        self.name = name;
    }
}