//
//  TestAnimation2.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/18/22.
//

import SwiftUI

struct TestAnimation2: View {
    @State var isOn: Bool = false
    var body: some View {
        VStack {
            ZStack {
                if isOn {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                            .foregroundColor(.red)
                            .frame(width: 200, height: 300)
                            .onAppear {
                                print("stroke rectangle")
                            }
                    Text("👻").font(.system(size: 150)).transition(.scale)
                        .onAppear {
                            print("text")
                        }
                } else {
                    RoundedRectangle(cornerRadius: 10)
//                        	.stroke()
                        .foregroundColor(.red)
                        .frame(width: 200, height: 300)
                        .transition(.identity)
                        .onAppear {
                            print("fill rectangle")
                        }

                }
            }
            Toggle("Show", isOn: $isOn)
        }
    }
}

struct TestAnimation2_Previews: PreviewProvider {
    static var previews: some View {
        TestAnimation2()
    }
}
