//
//  TestCheckpoint6.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/26/22.
//

import Foundation

struct AboutCar {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int
    
    init(model: String, numberOfSeats: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        currentGear = 0
    }
    
    mutating func changeGear(up: Bool = false, down: Bool = false) {
        if up && down == false {
            currentGear += 1
            print("Gear up to \(currentGear)")
        } else if down && up == false {
            currentGear -= 1
            print("Grear down to \(currentGear)")
        } else {
            print("Gear stay on \(currentGear)")
        }
    }
    static let example = AboutCar(model: "Tesla", numberOfSeats: 4)
}
