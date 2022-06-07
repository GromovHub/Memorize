//
//  TestOnTapGesture.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/14/22.
//

import SwiftUI

struct TestOnTapGesture: View {
    var body: some View {
        VStack {Text("onTap")
        .onTapGesture(count: 3, perform: {
                print("tapped")
            })
            Spacer()
            Text("Gest")
                .gesture(DragGesture(minimumDistance: 50)
                    .onEnded({_ in print("long press")}))
            
            
        }
    }
}

struct TestOnTapGesture_Previews: PreviewProvider {
    static var previews: some View {
        TestOnTapGesture()
    }
}
