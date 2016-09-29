//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Mirim An on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane:Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight:Bool {
        return speed > 0.0 && altitude > 0.0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff(){
        if inFlight == false {
            speed = maxSpeed * 0.1
            altitude = maxAltitude * 0.1
        }
    }
    
    func land(){
        speed = 0.0
        altitude = 0.0
    }
    
    func climb(){
        if altitude < maxAltitude && inFlight == true {
        altitude += maxAltitude * 0.1
        decelerate()
        }
    }
    
    func dive(){
        if (altitude > 0.0 && inFlight == true) || (speed == 0.0 && altitude > 0.0) {
        altitude -= maxAltitude * 0.1
        super.accelerate()
        }
    }
    
    //  dive() which decreases the altitude by one tenth (1/10th) of the plane's maxAltitude and causes the plane to accelerate. This method should not decrease the altitude below zero and can only be performed if the plane is not already on the ground. However, if the plane's speed is zero, it is still in the air but has "stalled" and is still able to perform a dive in order to convert altitude into speed.

    
    func bankRight(){
        if inFlight == true {
        heading += 45
        speed -= speed * 0.1
        }
    }
    
    func bankLeft(){
        if inFlight == true {
            heading += 315
            speed -= speed * 0.1
        }
        
    }
}
