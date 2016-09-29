//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Mirim An on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet:Plane {
    
    override init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, maxAltitude: maxAltitude)
    }
   
    override func climb(){
        if altitude < maxAltitude && inFlight == true  {
        altitude += maxAltitude * 0.2
        super.decelerate()
        }
    }
    
    override func dive() {
        if altitude > 0 && inFlight == true {
        altitude -= maxAltitude * 0.2
        super.accelerate()
        }
    }
    
    func afterburner(){
        if inFlight == true && speed == maxSpeed {
        speed = maxSpeed * 2
        }
    }
    }


