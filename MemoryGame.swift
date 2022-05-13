//
//  MemoryGame.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/9/22.
//
import Foundation

struct MemoryGame <CardContent> where CardContent: Equatable {

    
    private(set) var cards: Array<Card>
    
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {cards.indices.filter({cards[$0].isFacedUp}).oneAndOnly}
        set {cards.indices.forEach{cards[$0].isFacedUp = ($0 == newValue)}}
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []
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
                cards[chosenIndex].isFacedUp = true
            } else {
               
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
           
        }
        print(cards)
    }
    
    struct Card: Identifiable {
        var isFacedUp = false
        var matched = false
        let content: CardContent
        let id: Int
    }
}
extension Array {
    var oneAndOnly: Element? {
        if self.count == 1 {
            return self.first
        } else {
            return nil
        }
    }
    
}
