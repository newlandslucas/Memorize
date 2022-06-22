//
//  EmojiMemoryGame.swift
//  Memorize (iOS)
//
//  Created by Lucas Machado (Estudos) on 01/06/22.
//

import SwiftUI


class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🎃", "👻", "🕷"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }

    }
    
    //MARK: - Acess to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
        //MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
