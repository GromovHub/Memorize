//
//  TestModel1.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/12/22.
//

import Foundation
class TestModel1{
    var smthChange = "nothing" {
        didSet{
            print("something changed")
        }
    }
    func tggl () {
        print("tgggl ++")
    }
    
    func changeValue (value: String) {
        smthChange = value
    }
    
    
}
