//
//  TestWrappedModel.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/24/22.
//

import Foundation
 
class WrappedModel: ObservableObject {
    @Published var score: Int = 0
    
    func plus () {
        self.score += 1
    }
    func minus () {
        self.score -= 1
    }
//    func returnScore() {
//        self.score
//    }
}
