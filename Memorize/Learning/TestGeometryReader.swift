//
//  TestGeometryReader.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/6/22.
//

import SwiftUI

struct TestGeometryReader: View {
    var body: some View {
        GeometryReader { geometry in
            HStack() {
                Text("Left")
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.67)
                    .background(.orange)
                Text("Right")
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.33)
                    .background(.yellow)
            }
            .frame(height: 50)
        
    }
}
}

struct TestGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        TestGeometryReader()
    }
}
