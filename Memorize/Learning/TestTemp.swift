//
//  TestTemp.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/6/22.
//

import Foundation

struct TestTemp {
    
    init() {
        aboutCheck6()
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
        // print(dict[1])
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
    
    enum Weekdays: Comparable {
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
    
    private func aboutLoop() {
    outer: for i in 0...10 {
        if i == 3 {
            continue
        }
    inner: for j in 0...10 {
        print(i+j, terminator: " - ")
        if i == 5 {
            break outer
        }
    }
    }
        for i in 0...3 {
            print("i -> \(i)")
        }
    }
    
    private func aboutCondition(arg: Int = 11) {
        var flag: Bool{
            if arg > 10 {
                return true
            } else {
                return false
            }
        }
        
        if flag {
            print("work")
        }
        
        let x = "hello"
        if !x.isEmpty {
            print("not empty")
        }
        
        if Weekdays.Sunday > Weekdays.Monday {
            print("true")
        } else {
            print("false")
        }
        
        let z = arg>10 ? true : false
        print("z -> \(z)")
        
    }
    
    private func aboutCondition2(arg: Int = 25) -> Bool {
        let result : Bool = arg < 18 ? {
            print("<18")
            return false
        }() :
        {
            print(">18")
            return true
        }()
        
        return result
    }
    
    private func FizzBuzz(arg: Int = 100) {
        for i in 1...arg {
            if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
                print("\(i) FizzBuzz")
            } else if i.isMultiple(of: 3) {
                print("\(i) Fizz")
            } else if i.isMultiple(of: 5) {
                print("\(i) Buzz")
            } else {
                print(i)
            }
        }
    }
    
    private func aboutSqrt(arg: Double = 16) {
        print(sqrt(arg))
    }
    
    private func aboutStringCompareSort(arg1: String = "abc", arg2: String = "cab") {
        print(arg1.sorted() == arg2.sorted())
    }
    
    private func aboutPythagorean(a: Double = 3, b: Double = 5) {
        let c = sqrt(a * a + b * b)
        print("hypotenuse -> \(c)")
    }
    
    private func aboutTupleReturn() -> (retArg1: Double, retArg2: Double){
        return (retArg1: 3, retArg2: 4)
    }
    
    private func aboutCapacity() {
        var arr = [1,2,3,4,5]
        print(arr)
        arr.removeAll(keepingCapacity: false)
        print(arr.count)
    }
    
    enum MyErrors: Error {
        case short, obvious
        case outOfBounds
    }
    
    private func aboutThrows(arg: Int = 10) throws {
        if arg < 10 {
            throw MyErrors.short
        } else if arg > 10{
            throw MyErrors.obvious
        } else {
            print("great")
        }
    }
    
    // without decimals
    private func mySqrt1(arg: Int = 7) throws {
        if arg < 1 && arg > 10_000 {
            throw MyErrors.outOfBounds
        } else if arg == 1 {
            print("The square root of 1 is 1")
        } else {
            var i = 1
            var result = 1
            while result <= arg {
                i+=1
                result = i * i
            }
            print("The square root of \(arg) is \(i - 1)")
        }
    }
    
    //    Filter out any numbers that are even
    //    Sort the array in ascending order
    //    Map them to strings in the format “7 is a lucky number”
    //    Print the resulting array, one item per line
    private func aboutClosures() {
        let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
        let even = luckyNumbers.filter { $0 % 2 != 0 ? true : false }
        let sorted = even.sorted()
        let mappedToString = sorted.map { "\($0) is a lucky number" }
        for i in mappedToString.indices {
            print(mappedToString[i])
        }
    }
    
    private func aboutCompactClosures(arg: [Int] = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]) {
        arg
            .filter { $0 % 2 != 0 ? true : false }
            .sorted()
            .map { "\($0) is a lucky number" }
            .forEach { print($0) }
    }
    
    private func aboutSort() {
        //let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
        let luckyNumbers2 = [5, -2, 23, 7, 87, -42, 509]
        //let luckyNumbers3 = [150,-12,1,4,6,0,-300,12,5,7,3,11,0]
        let arr2 = luckyNumbers2.sorted { i, j in
            if i == 7 {
                return true
            } else if j == 7 {
                return false
            } else if i < j {
                return true
            } else {
                return false
            }
        }
        print(arr2)
    }
    
    private func aboutCompactSort() {
        let luckyNumbers2 = [5, -2, 23, 7, 87, -42, 509]
        print(luckyNumbers2.sorted { $0 == 7 ? true :
            $1 == 7 ? false :
            $0 < $1 ? true :
            false })
        // awesome
    }
    
    private struct AboutStruct {
        var x: Int
        let x1: Int = 100
        var y: String
        mutating func addString(arg: String) {
            y += arg
            print(y)
        }
    }
    
    private func aboutGetSet() {
        var x: Int = 0 {
            didSet {
                print("x did set to \(x)")
                print("old x is \(oldValue)")
            }
            willSet {
                print("x will set to \(newValue)")
            }
        }
        print(x = 100)
        var y: Int {
            set(newY) {
                print("new y is \(newY)")
            }
            get {
                Int.random(in: 1...1000)
            }
        }
        print(y = 200)
        print("y is \(y)")
    }
    struct AboutStatic {
        static let one = "one"
        static var two = "two"
    }
    struct AboutAccess {
        private(set) var abx: Int
        private var aby: Int
        static var abz: Int = 5
        
        init(x: Int, y: Int) {
            abx.self = x
            aby.self = y
        }
    }
    private func aboutAccess() {
        let x = AboutAccess(x: 1, y: 2)
        print(x.abx)
        print(AboutAccess.abz)
        print(AboutStatic.one)
        AboutStatic.two = "twos"
        print(AboutStatic.two)
    }
    
    private func aboutCheck6() {
        var x = AboutCar(model: "Ford", numberOfSeats: 4)
        print(x.changeGear(up: true, down: true))
        print(x.currentGear)
    }
    
    extension String {
      func indexOf(_ pattern: String) -> String.Index? {
        for i in self.characters.indices {
            var j = i
            var found = true
            for p in pattern.characters.indices{
                if j == self.characters.endIndex || self[j] != pattern[p] {
                    found = false
                    break
                } else {
                    j = self.characters.index(after: j)
                }
            }
            if found {
                return i
            }
        }
        return nil
      }
    }
    
}
