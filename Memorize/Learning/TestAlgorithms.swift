//
//  TestAlgorithms.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/17/22.
//

import Foundation

struct TestAlgorithms {
    
    
    // insert to test
    init() {
        
    }
    
    public func bubbleSort<T> (_ elements: [T], _ comparison: (T,T) -> Bool) -> [T]  {
        var array = elements
        
        for i in 0..<array.count {
            for j in 1..<array.count-i {
                if comparison(array[j], array[j-1]) {
                    let tmp = array[j-1]
                    array[j-1] = array[j]
                    array[j] = tmp
                }
            }
        }
        print(array)
        return array
    }
    
    public func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
        for (index, obj) in array.enumerated() where obj == object {
            return index
        }
        return nil
    }
    
    func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
        if range.lowerBound >= range.upperBound {
            // If we get here, then the search key is not present in the array.
            return nil
            
        } else {
            // Calculate where to split the array.
            let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
            
            // Is the search key in the left half?
            if a[midIndex] > key {
                return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
                
                // Is the search key in the right half?
            } else if a[midIndex] < key {
                return binarySearch(a, key: key, range: midIndex + 1 ..< range.upperBound)
                
                // If we get here, then we've found the search key!
            } else {
                return midIndex
            }
        }
    }
    
    func countOccurrences<T: Comparable>(of key: T, in array: [T]) -> Int {
        var leftBoundary: Int {
            var low = 0
            var high = array.count
            while low < high {
                let midIndex = low + (high - low)/2
                if array[midIndex] < key {
                    low = midIndex + 1
                } else {
                    high = midIndex
                }
            }
            return low
        }
        var rightBoundary: Int {
            var low = 0
            var high = array.count
            while low < high {
                let midIndex = low + (high - low)/2
                if array[midIndex] > key {
                    high = midIndex
                } else {
                    low = midIndex + 1
                }
            }
            return low
        }
        return rightBoundary - leftBoundary
    }
    
    func minimum<T: Comparable>(_ array: [T]) -> T? {
        guard var minimum = array.first else {
            return nil
        }
        
        for element in array.dropFirst() {
            minimum = element < minimum ? element : minimum
        }
        return minimum
    }
    
    func maximum<T: Comparable>(_ array: [T]) -> T? {
        guard var maximum = array.first else {
            return nil
        }
        
        for element in array.dropFirst() {
            maximum = element > maximum ? element : maximum
        }
        return maximum
    }
    
    func kthLargest(a: [Int], k: Int) -> Int? {
        let len = a.count
        if k > 0 && k <= len {
            let sorted = a.sorted()
            return sorted[len - k]
        } else {
            return nil
        }
    }
    
    func select<T>(from a: [T], count k: Int) -> [T] {
        var a = a
        for i in 0..<k {
            let r = Int.random(in: i ... a.count - 1)
            if i != r {
                a.swapAt(i, r)
            }
        }
        return Array(a[0..<k])
    }
    
    func insertionSort(_ array: [Int]) -> [Int] {
        var sortedArray = array             // 1
        for index in 1..<sortedArray.count {         // 2
            var currentIndex = index
            while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] { // 3
                sortedArray.swapAt(currentIndex - 1, currentIndex)
                currentIndex -= 1
            }
        }
        return sortedArray
    }

}
