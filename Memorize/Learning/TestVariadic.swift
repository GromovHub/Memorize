//
//  TestVariadic.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/4/22.
//

import SwiftUI

struct TestVariadic: View {
    @State private var text = "nothing show"
    var body: some View {
        VStack {
        Text("\(text)")
        Button("play") {
            text = "123"
            withAnimation(.default) {
                getInts(numbers: 1,2,3, stateText: &text)
                // why don't 1,2 appear?
            }
          }
        } 
      }
}

//func setInoutText(stateText: inout String) {
//    stateText = getInts(numbers: 1,2,3,4,5)
//}
func getInts(numbers: Int..., stateText: inout String) {
    for i in numbers {
        print(i)
        stateText = String(i)
        print("state text -> \(stateText)")
        sleep(1)
        
    }
}

struct TestVariadic_Previews: PreviewProvider {
    static var previews: some View {
        TestVariadic()
    }
}
