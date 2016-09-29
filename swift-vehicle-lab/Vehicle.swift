//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Mirim An on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name:String
    let weight:Double
    let maxSpeed:Double
    var speed:Double = 0.0
    var heading: Double { didSet { if heading > 360 { heading = abs(360-heading) } } }
    
    init(name:String, weight:Double, maxSpeed:Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.heading = 0.0
    }
    
    func goFast(){
        self.speed = self.maxSpeed
    }
    
    func halt(){
        self.speed = 0.0
    }
    
    func accelerate(){
        if self.speed < self.maxSpeed {
        self.speed += self.maxSpeed * (1/10)
        }
    }
    
    func decelerate(){
        if speed > 0.0 {
            self.speed -= self.maxSpeed * (1/10)
        }
    }
    
    func turnRight(){
        if speed > 0.0 {
        heading += 90
        speed *= 1/2
        }
        
    }
    
    func turnLeft(){
        if heading > 360 {
            heading = abs(360-heading)}
        if speed > 0.0 {
        heading += 270
        speed *= 1/2
        }
    }
}
