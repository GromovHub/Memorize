//
//  TestTemp.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/6/22.
//

import Foundation

struct TestTemp {
    
    init() {
        for _ in 0...100 {}
        aboutSet()
        aboutEnums(dayOfWeek: .Sunday)
    }
    
    private func sayHello() {
    print("hello")
    }
    
    private func asyncHello() {
        print("before async")
        DispatchQueue.global().async {
            print("from async")
        }
        print("after async")
    }
    
    private func aboutArrays() {
        var arr = [Int]()
        for _ in 0...100 {
            arr.append(Int.random(in: 0...1000))
        }
        print(arr)
        print(arr.sorted())
        print(arr.reversed())
    }
    
    private func aboutDict() {
        var dict0 = [Int:Int]()
        dict0[1] = 100
        let dict: [Int:String] = [
            1 : "Vitaly",
            2 : "Gromov"
        ]
//        print(dict[1])
        print(dict[2, default: "doesn't exist"])
        print(dict[3] ?? "nothing")
    }
    
    class ObjForSet: Equatable, Identifiable, Hashable {
        var id = UUID()
        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
        static func == (lhs: TestTemp.ObjForSet, rhs: TestTemp.ObjForSet) -> Bool {
            true
        }
    }
    
    private func aboutSet() {
        let arr = [1,2,3,1]
        let set = Set(arr)
        print(arr, set)
        
        var set1 = Set<String>()
        set1.insert("hey")
        print(set1.contains("hey"), set.count)
        
        let x = ObjForSet()
        let y = x
        let z = ObjForSet()
        let set2: Set<ObjForSet> = Set([x, y, z])
        print(set2)
        for i in set2 {
            print(i.hashValue, i.id)
        }
    }
    
    enum Weekdays {
        case Monday, Tuesday, Wednesday
        case Thursday
        case Friday
        case Saturday, Sunday
    }
    
    private func aboutEnums(dayOfWeek: Weekdays) {
        switch dayOfWeek {
        case .Monday:
            print("Mon")
        case .Tuesday:
            print("Tue")
        case .Wednesday:
            print("Wed")
        case .Thursday:
            print("Thu")
        case .Friday:
            print("Fri")
        case .Saturday:
            print("Sat")
        case .Sunday:
            print("Sun")
        }
    }
}
