//
//  TestProtocolInject.swift
//  Memorize
//
//  Created by Vitaly Gromov on 7/10/22.
//

import Foundation


protocol AddUUID: Hashable {
}
struct StructA: AddUUID {
    var name: String
}
extension AddUUID {
    var id: UUID {UUID()}
    func sayYourId() {
        print("my id is \(self.id)")
    }
    func sayYourHash() {
        print("my hash is \(self.hashValue)")
    }
}
struct StructB: AddUUID {}
func play() {
    let x = StructA(name: "Mike")
    let y = StructA(name: "Jake")
    let z = StructB()
    print(x.self, x.id, x.hashValue)
    print(y.self, y.id, y.hashValue)
    print(z.self, z.id, z.hashValue)
    x.sayYourId()
    y.sayYourId()
    z.sayYourId()
    print("")
    x.sayYourId()
    x.sayYourId()
    x.sayYourId()
    print(x.id)
    print("")
    x.sayYourHash()
    y.sayYourHash()
    z.sayYourHash()
    print(x.hashValue)
}

// UUID changes
// HashValue does not change



