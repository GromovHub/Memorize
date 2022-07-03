//
//  TestImage.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/12/22.
//

import SwiftUI

struct TestImage: View {
    var body: some View {
        TabView {
            VStack {
                HStack(spacing: -50) {
                    CircleView()
                    CircleView()
                    CircleView()
                }
                Text("Vitaly ")
                    .foregroundColor(.white)
                    .font(.system(size: 13.5, weight: .bold))
                +
                Text("Gromov")
                    .foregroundColor(.white)
                    .font(Font.system(size: 13.5, weight: .black))
            }
            .tabViewStyle(.page)
            .background(Color("CustomColor"))
        Image("Wheel")
        
    }
        .tabViewStyle(.page)
        .ignoresSafeArea()
}
}

struct CircleView: View {
    var body: some View {
        ZStack {
            Circle()
             .fill(.white)
         Image("Wheel")
             .resizable()
             .scaledToFit()
             .clipShape(Circle())
             .padding(10)
        }
}
}

struct TestImage_Previews: PreviewProvider {
    static var previews: some View {
        TestImage()
    }
}
