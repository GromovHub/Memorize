//
//  TestAlert.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/21/22.
//

import SwiftUI

struct TestAlert: View {
    @State var flag = false
    @State var flag2 = false
    var body: some View {
        VStack{
            Button("hello", action: {flag2.toggle()}).buttonStyle(.bordered)
//                .confirmationDialog("show", isPresented: $flag2, actions: {
//                    Button("close", action: {})
//                })
                .confirmationDialog("hi", isPresented: $flag2, actions: {}, message: {Text("hi hi")})
            Button {
            flag.toggle()
//            self.flag = true
            let _ = {
                 print(flag)
             }()
        } label: {
            Text("Show Alert")
            
        }
        .alert("My Alert", isPresented: $flag, actions: {
            Button(action: {
                //print(flag)
            }, label: {Text("inside")})
            Button("Otvorot", role: .cancel, action: {})
            Button("Povorot", role: .destructive, action: {})
        }).buttonStyle(.borderedProminent)
        let _ = {
             print("after alert \(flag)")
         }()}
    }
}

struct TestAlert_Previews: PreviewProvider {
    static var previews: some View {
        TestAlert()
    }
}
