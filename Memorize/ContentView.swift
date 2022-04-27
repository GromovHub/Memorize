//
//  ContentView.swift
//  Memorize
//
//  Created by Vitaly Gromov on 3/29/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    var body: some View {
        VStack {
            Text("Memorize game").font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(viewModel.cards){ card in
                        CardView(card: card )
                            .aspectRatio(2/3, contentMode: .fill)
                            .onTapGesture {
                                viewModel.choose(card: card)
                            }
                    }
                }.foregroundColor(.red).padding(.all)
            }
        }.padding(.horizontal)
}
} 

struct CardView: View {
    let card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFacedUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.matched {
                shape.opacity(0)
            } else {
                shape.fill()
            }
        }
    }
}
    
    




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
    }
}


