//
//  TestCelFah.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/3/22.
//

import SwiftUI

struct TestCelFah: View {
    @State private var celsius: String = ""
    var body: some View {
        VStack{
            TextField("Enter Celsius", text: $celsius)
            let result = celFah(celsius)
            Text("\(result)")
            
        }
       
    }
    
    func celFah(_ celsius: String) -> String {
        let celsius: Double = Double(celsius) ?? 0
        let fahrenheit: Double = (celsius * 9 / 5) + 32
        print("""
        Celsius -> \(celsius)°C
        Fahrenheit -> \(fahrenheit)°F
        """)
        return "Celsius -> \(celsius)°C\nFahrenheit -> \(fahrenheit)°F"

    }
}

struct TestCelFah_Previews: PreviewProvider {
    static var previews: some View {
        TestCelFah()
    }
}
