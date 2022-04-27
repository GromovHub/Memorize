//
//  TestTextField.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/13/22.
//

import SwiftUI

struct TestTextField: View {
    @State var words = ""
    var body: some View {
        VStack {
            TextField("hint", text: $words).padding().textFieldStyle(.plain)
            Button(action: {}, label: {Text("button")}).buttonStyle(.bordered)
            Button(action: {}, label: {Text("button")}).buttonStyle(.plain)
            Button(action: {}, label: {Text("button")}).buttonStyle(.automatic)
            Button(action: {}, label: {Text("button")}).buttonStyle(.borderedProminent)
            Button(action: {}, label: {Text("button")}).buttonStyle(.borderless)
            TextField(text: $words, prompt: Text("prompt"), label: {Text("some text")})
            let toDouble = Double(words) ?? 0
            Text("-> \(toDouble)")
            SecureField("enter pass", text: $words)
        }
    }
}

struct TestTextField_Previews: PreviewProvider {
    static var previews: some View {
        TestTextField()
    }
}
