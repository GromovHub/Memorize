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
}
