//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Vitaly Gromov on 3/29/22.
//
import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var  game: EmojiMemoryGame
    var body: some View {

        AspectVGrid(items: game.cards, aspectRatio: 2/3) { card in
            if card.matched && !card.isFacedUp {
                Rectangle().opacity(0)
            } else {
                CardView(card: card)
                    .padding(4)
                    .onTapGesture {
                        game.choose(card: card)
                }
            }
        }
            .foregroundColor(.red)
            .padding(.horizontal)
}
}

struct CardView: View {
    
    let card: EmojiMemoryGame.Card

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
            if card.isFacedUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: DrawingConstants.lineWidth)
                Pie(startAngle: Angle(degrees: 0-90), endAngle: Angle(degrees: 110-90))
                    .opacity(0.5)
                    .padding(5)
                Text(card.content).font(font(in: geometry.size))
            } else if card.matched {
                shape.opacity(0)
            } else {
                shape.fill()
            }
        }
        }
    }
    
    private func font (in size: CGSize) -> Font{
        Font.system(size: .minimum(size.width,size.height) * DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.7
    }
}
    
    




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        game.choose(card: game.cards.first!)
        return EmojiMemoryGameView(game: game)
            
    }
}

