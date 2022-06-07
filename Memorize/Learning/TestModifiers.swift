//
//  TestModifiers.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/24/22.
//
import SwiftUI

struct customModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.cyan)
    }
}

extension View {
    func myModif() -> some View {
        self.modifier(customModifier())
    }
}

struct TestModifiers: View {
    @State private var colorToggle = false
    var body: some View {
        VStack{Button("My Button"){
            colorToggle.toggle()
        }.modifier(customModifier())
            Button("My Second", action: {}).myModif() 
        }
    }
}

struct TestModifiers_Previews: PreviewProvider {
    static var previews: some View {
        TestModifiers()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
