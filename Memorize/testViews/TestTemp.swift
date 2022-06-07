//
//  TestTemp.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/6/22.
//

import Foundation

struct TestTemp {
    
    init() {
        aboutDict()
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
}
