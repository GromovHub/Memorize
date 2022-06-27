//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Vitaly Gromov on 3/29/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    private let game: EmojiMemoryGame = EmojiMemoryGame()
    
//  MARK: - Learning/Tests
//    let game1: TestModel1 = TestModel1()
//    let wrapMod = WrappedModel()
    let testTemp = TestTemp()
    let testAlgorithms = TestAlgorithms()
    
    var body: some Scene {
        WindowGroup {
            
//            EmojiMemoryGameView(game: game)
            
//  MARK: - Learning/Tests - Views
//            TestImage()
//            TestAnimation2()
//            TestKingFisher()
//            TestCelFah()
//            TestVariadic()
//            TestSPAlert()
            TestAPIUnsplash()
//            TestOpenSettings()
//            TestJSON()
//            TestNavigationLink()
//            EmptyTestContentView()
//            TestToggle(model: game1)
//            TestButton()
//            TestWrapped(wrappedModel: wrapMod)
//            TestSheet()
//            TestNavigationView()
//            TestNavigationView2()
            
        }
    }
}

