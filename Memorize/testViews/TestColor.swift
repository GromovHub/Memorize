//
//  TestColor.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/22/22.
//

import SwiftUI

struct TestColor: View {
    @State var scolor: Color = .red
    var body: some View {
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            scolor
            Button("off") {
                scolor = .clear
            }
        }
        
    }
  
}

struct TestColor_Previews: PreviewProvider {
    static var previews: some View {
        TestColor()
    }
}
