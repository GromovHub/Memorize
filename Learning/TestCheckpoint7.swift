//
//  TestCheckpoint7.swift
//  Memorize
//
//  Created by Vitaly Gromov on 7/1/22.
//

import Foundation

struct ZOO {
    
    init() {
        var arr: [Animal] = []
        let corgi = Corgi(barking: "i'am Corgi", legs: 4)
        let poodle = Poodle(barking: "i'am Poodle", legs: 4)
        let persian = Persian(legs: 4, isTame: true, meowing: "I'am Persian")
        let lion = Lion(legs: 4, isTame: false, meowing: "i'am Lion")
        arr.append(corgi)
        arr.append(poodle)
        arr.append(persian)
        arr.append(lion)
    }
}

class Animal {
    let legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog1: Animal {
    let barking: String
    init(barking: String, legs: Int) {
        self.barking = barking
        super.init(legs: legs)
        speak()
    }
    func speak() {
        print("\(self.barking) and i have \(self.legs) legs")
    }
}

class Cat: Animal {
    let isTame: Bool
    let meowing: String
    init(legs: Int, isTame: Bool, meowing: String) {
        self.isTame = isTame
        self.meowing = meowing
        super.init(legs: legs)
        speak()
    }
    func speak() {
        print("\(meowing) i \(self.isTame ? "tame" : "not tame") and i have \(self.legs) legs ")
    }
}

class Corgi: Dog1 {
    
}

class Poodle: Dog1 {
    
}

class Persian: Cat {
    
}

class Lion: Cat {
    
}
