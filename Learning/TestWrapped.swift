//
//  TestWrapped.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/24/22.
//

import SwiftUI




struct TestWrapped: View {
    @ObservedObject var wrappedModel: WrappedModel
    var body: some View {
        NavigationView {
            HStack {
                Button("minus", action: {wrappedModel.minus()})
                Button("plus", action: {wrappedModel.plus()})
                Button("ShowScore", action: {
                    print(wrappedModel.score)})
            }
            .navigationTitle("Score: \(wrappedModel.score)")
        }.buttonStyle(.borderedProminent)
    }
}






struct TestWrapped_Previews: PreviewProvider {
    static var previews: some View {
        let x = WrappedModel()
        TestWrapped(wrappedModel: x)
    }
}
