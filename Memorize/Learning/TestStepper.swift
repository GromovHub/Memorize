//
//  TestStepper.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/13/22.
//

import SwiftUI

struct TestStepper: View {
    @State var amount = 10
    @State var words = ""
    var body: some View {
        VStack{
            Stepper(value: $amount, in: 0...20, step: 1, label: {Text("Label")}) { boole in
//                if boole {
//                    words = "true"
//                } else {
//                    words = "true1"
//                }
            }.padding()
            Text("\(amount)")
            Stepper(label: {Text("stepper2")}) {
                amount += 1
            } onDecrement: {
                amount -= 1
            }

        }
    }
}

struct TestStepper_Previews: PreviewProvider {
    static var previews: some View {
        TestStepper()
    }
}
