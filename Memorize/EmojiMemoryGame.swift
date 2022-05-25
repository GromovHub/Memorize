//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/9/22.
//
import SwiftUI

class EmojiMemoryGame: ObservableObject{
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🚀","🚜","🚢","🚂","🚗","🚁","🚙","🚌","🚑"
                  ,"🛺","⛴","✈️","🚚","🌏","🐶","🐰"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 5) {pairIndex in emojis[pairIndex]}
    }
    
    @Published private var model : MemoryGame<String> = createMemoryGame()
    var cards: Array<Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: Card){
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
}
