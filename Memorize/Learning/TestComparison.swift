//
//  TestComparison.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/2/22.
//

import SwiftUI

struct TestComparison: View {
    var body: some View {
        smth2
    }
    
    var smth: some View {
        let x: Bool = "ab" <= "baba"
        let y = String(x)
        return Text("\(y)")
    }
    
    var smth2: some View {
        let x = Float(2.5456)
        let y = printInfo(x)
        return Text("\(y)")
    }
    
    func printInfo(_ value: Any) -> String {
        let t = type(of: value)
        print("'\(value)' of type '\(t)'")
        return "'\(value)' of type '\(t)'"
    }
}

















struct TestComparison_Previews: PreviewProvider {
    static var previews: some View {
        TestComparison()
    }
}
