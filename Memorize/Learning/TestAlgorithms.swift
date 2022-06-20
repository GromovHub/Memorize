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




}
