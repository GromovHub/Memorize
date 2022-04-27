//
//  MemoryGame.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/9/22.
//

import Foundation

struct MemoryGame <CardContent> where CardContent: Equatable {

    
    private(set) var cards: Array<Card>
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int?
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2+1))
        }
    }
    
    mutating func choose(_ card: Card){
        if let chosenIndex = cards.firstIndex(where: {aCardInTheCardArray in
            aCardInTheCardArray.id == card.id
        }),
           !cards[chosenIndex].isFacedUp,
           !cards[chosenIndex].matched
        {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content
                {
                    cards[chosenIndex].matched = true
                    cards[potentialMatchIndex].matched = true
                }
                indexOfTheOneAndOnlyFaceUpCard = nil
            } else {
                // i in 0..<cards.count
                for i in cards.indices {
                    cards[i].isFacedUp = false
                }
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
            cards[chosenIndex].isFacedUp.toggle()
        }
        print(cards)
    }
    
    struct Card: Identifiable {
        var isFacedUp: Bool = false
        var matched: Bool = false
        var content: CardContent
        var id: Int
    }
}

