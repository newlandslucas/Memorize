//
//  MemoryGame.swift
//  Memorize (iOS)
//
//  Created by Lucas Machado (Estudos) on 01/06/22.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
    }
}
