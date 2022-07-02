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
    
    var body: some Scene {
        WindowGroup {
            
            EmojiMemoryGameView(game: game)

            
        }
    }
}

