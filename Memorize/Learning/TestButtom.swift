//
//  TestSwiftUIView3.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/13/22.
//

import SwiftUI



struct TestButton: View {
    @State var flag: Bool = false
    var body: some View {
        VStack{
        Spacer()
        Button(action: {
            flag.toggle()
            print(flag)
        }, label: {Text("My button")})
        .frame(width: 100, height: 50, alignment: .center)
        .background(LinearGradient(colors: [.red,.black], startPoint: .leading, endPoint: .trailing))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .foregroundColor(.white)
            
        }
    }
}








struct TestSwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        TestButton()
    }
}
