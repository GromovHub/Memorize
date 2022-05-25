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
        VStack {
            gameBody
            shuffleButton
        }
        .padding(.horizontal)
    }

    var gameBody: some View {
        AspectVGrid(items: game.cards, aspectRatio: 2/3) { card in
            if card.matched && !card.isFacedUp {
              //  Rectangle().opacity(0)
                Color.clear
            } else {
                CardView(card: card)
                    .padding(4)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 2)) {
                            game.choose(card: card)
                        }
                        
                }
            }
        }.foregroundColor(.red)
    }
        
        var shuffleButton: some View {
                Button("Shuffle") {
                    withAnimation(.easeInOut) {
                        game.shuffle()
                    }
                }
        }
}
struct CardView: View {
    
    let card: EmojiMemoryGame.Card

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Pie(startAngle: Angle(degrees: 0-90), endAngle: Angle(degrees: 110-90))
                    .opacity(0.5)
                    .padding(5)
                Text(card.content)
                    .rotationEffect(Angle(degrees: card.matched ? 360 : 0))
                    .animation(.linear(duration: 1).repeatForever(autoreverses: false), value:  card.matched)
                    .font(Font.system(size: DrawingConstants.fontSize))
                    .scaleEffect(scale(thatFits: geometry.size))
            }.cardify(isFaceUp: card.isFacedUp)
        }
    }
    
    private func scale(thatFits size: CGSize) -> CGFloat {
        min(size.width, size.height) / (DrawingConstants.fontSize / DrawingConstants.fontScale)
    }
    
    private struct DrawingConstants {
        static let fontSize: CGFloat = 32
        static let fontScale: CGFloat = 0.7
    }
}
    
    




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
       // game.choose(card: game.cards.first!)
        return EmojiMemoryGameView(game: game)
            
    }
}

