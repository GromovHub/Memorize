//
//  TestSlider.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/13/22.
//

import SwiftUI

struct TestSlider: View {
    @State var amount: Float = 2.5
    var body: some View {
        VStack{
        Slider(value: $amount, in: 0...100)
        Text("\(amount, specifier: "%.2f") Celsius is \((amount) * 9 / 5 + 32, specifier: "%.2f") Fahrenheit")
}
    }
}

struct TestSlider_Previews: PreviewProvider {
    static var previews: some View {
        TestSlider()
    }
}
