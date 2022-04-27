//
//  TestSwiftUIView1.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/11/22.
//

import SwiftUI

struct TestGradient: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .strokeBorder(LinearGradient(colors: [.yellow,.red],
                                         startPoint: .leading,
                                         endPoint: .trailing),
                          lineWidth: 50)
        Text("My gradient")
            .foregroundColor(.white)
            .clipShape(Circle())
            .frame(width: 400, height: 400, alignment: .center)
            .background(RadialGradient(colors: [.red,.black], center: .center, startRadius: 10, endRadius: 100)).clipShape(Circle())
        //.background(LinearGradient(colors: [.red,.black,.yellow], startPoint: .leading, endPoint: .trailing))
    }
}

struct TestSwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        TestGradient()
    }
}
