//
//  TestPriority.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/5/22.
//

import SwiftUI

struct TestPriority: View {
    var body: some View {
        HStack (alignment: .bottom){
         Text("Hello, World!werhjrtejthgwregrerwegrhdwegdhg").layoutPriority(10)
         Image(systemName: "arrow.up")
         RoundedRectangle(cornerRadius: 10).layoutPriority(10)

         
     }
    }
}

struct TestPriority_Previews: PreviewProvider {
    static var previews: some View {
        TestPriority()
    }
}
