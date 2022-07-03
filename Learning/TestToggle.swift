//
//  TestSwiftUIView2.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/12/22.
//

import SwiftUI

struct TestToggle: View {
    var model: TestModel1
    //old
    @State var flag = false

    var body: some View {

        VStack {
                Toggle(isOn: $flag, label: {
                    Text("give 1000$")
                }).padding()
                .onTapGesture {
                 
                }
            
//                if flag {
////                    model.smthChange = "yes"
////                    print(model.smthChange)
//                    Text("toggled")
//                }
            
            let _ = {
                if flag {
                    model.changeValue(value: "yes")
                    print(model.smthChange)
                    print("toggled to true")
                    
                } else {
                    model.changeValue(value: "no")
                    print(model.smthChange)
                    print("toggled to false")
                }
            }()
    
            
        }
    }
}

struct TestSwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        TestToggle(model: TestModel1())
    }
}
