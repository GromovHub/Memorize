//
//  TestUserDeafults.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/3/22
//

import SwiftUI

struct TestUserDefaults: View {
    @State var counter = UserDefaults.standard.integer(forKey: "count")
    var body: some View {
        Button("counter: \(counter)") {
            counter += 1
            UserDefaults.standard.set(counter, forKey: "count")
        }
    }
    

    
}

struct TestUserDeafults_Previews: PreviewProvider {
    static var previews: some View {
        TestUserDefaults()
    }
}
