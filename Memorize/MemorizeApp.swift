//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Vitaly Gromov on 3/29/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game: EmojiMemoryGame = EmojiMemoryGame()
    let game1: TestModel1 = TestModel1()
let wrapMod = WrappedModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
            //EmptyTestContentView()
            //TestToggle(model: game1)
            //TestButton()
//            TestWrapped(wrappedModel: wrapMod)
        }
    }
}

