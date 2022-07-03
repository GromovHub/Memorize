//
//  TestAnimation.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/16/22.
//

import SwiftUI

struct TestAnimation: View {
    @State var count: Double = 0.0
    @State var color: Color = .black
    @State var colorFlag: Bool = false
    var body: some View {
        VStack{
            Spacer()
            Text("👻")
                .rotationEffect(Angle.degrees(count))
                .font(.system(size: 100))
             
                .frame(width: 300, height: 300)
                .background(color)
                .clipShape(Circle())
                //.animation(.default, value: count)
            Spacer()
            
            Button("rotate") {
                //count += 45
                withAnimation {
                    count += 45
                    colorFlag.toggle()
                    color = colorFlag ? .red : .black
          
                }
            }.buttonStyle(.borderedProminent)
            Spacer()
        }
    }
}

struct TestAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TestAnimation()
    }
}
