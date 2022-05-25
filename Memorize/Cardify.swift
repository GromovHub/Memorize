//
//  Cardify.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/15/22.
//

import SwiftUI


struct Cardify: AnimatableModifier {
    init(isFacedUp: Bool) {
        rotation = isFacedUp ? 0 : 180
    }
    
    var animatableData: Double {
        get{rotation}
        set{rotation = newValue}
    }
    
    var rotation: Double //degrees
    
    func body(content: Content) -> some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
        if rotation < 90 {
            shape.fill().foregroundColor(.white)
            shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
        } else {
            shape.fill()
        }
            content
                .opacity(rotation < 90 ? 1 : 0)
    }
        .rotation3DEffect(Angle(degrees: rotation), axis: (x: 0, y: 1, z: 0))
}
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFacedUp: isFaceUp))
    }
}
 
