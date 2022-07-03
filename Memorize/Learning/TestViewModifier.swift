//
//  TestViewModifier.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/14/22.
//

import SwiftUI

struct TestViewModifier: View {
    var body: some View {
        VStack {
            Text("hi").cardify(isFaceUp: true).padding()
            Text("hi").cardify(isFaceUp: false).padding()
        }
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).modifier(Cardify(isFaceUp: true))
//        Image(systemName: "heart.fill").cardify(isFaceUp: true)
    }
}

//struct Cardify: ViewModifier {
//    var isFaceUp: Bool
//    func body(content: Content) -> some View {
//        ZStack {
//            if isFaceUp {
//                RoundedRectangle(cornerRadius: 10)
//                    .foregroundColor(.white)
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(lineWidth: 5)
//                    .foregroundColor(.red)
//                content
//            } else {
//                RoundedRectangle(cornerRadius: 10)
//                    .foregroundColor(.red)
//            }
//        }.padding()
//    }
//
//
//}
//
//extension View {
//    func cardify(isFaceUp: Bool) -> some View {
//        self.modifier(Cardify(isFaceUp: isFaceUp))
//    }
//}

struct TestViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        TestViewModifier()
    }
}
