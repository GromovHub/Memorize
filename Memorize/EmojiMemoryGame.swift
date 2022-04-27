//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/9/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject{
    static let emojis = ["🚀","🚜","🚢","🚂","🚗","🚁","🚙","🚌","🚑"
                  ,"🛺","⛴","✈️","🚚","🌏","🐶","🐰"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) {pairIndex in emojis[pairIndex]}
    }
    
    @Published private var model : MemoryGame<String> = createMemoryGame()
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
