//
//  TestNavigationView2.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/30/22.
//

import SwiftUI

struct TestNavigationView2: View {
    @State var score = 5
    var body: some View {
        NavigationView {
            VStack {
                List(0..<score, id: \.self){
                    Text("raw \($0)")
                }
            }
            .navigationTitle("Score: \(score)")
            .toolbar(content: {ToolbarItem(placement: .navigationBarLeading) {
                Text("Leading Winter").font(.headline)
            }})
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("New Game") {
                        score += 1
                    }
                }
            }
        }
    }
}

struct TestNavigationView2_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigationView2()
    }
}
