//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Sergey Maslennikov on 24.11.2020.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojisAll: Array<String> = ["๐ง ","๐งโโ๏ธ","๐งโโ๏ธ","๐งต","๐งถ","๐","๐งณ","๐ถ","๐ฆ","๐ฏ","๐ฆ","๐ต","๐ธ","๐ฎ","๐ท","๐ผ","๐จ","๐ฐ","๐น","๐ฆ","๐ฆ","๐","๐","๐บ","๐ฆ","๐ฆ","๐ด","๐","๐ฆ","๐","๐","๐ฆ","๐ฆ","๐ข","๐","๐ฆ","๐","๐","๐ค","๐ฉ","๐","๐ฃ","๐ฆท","๐ฌ","๐ณ","๐","๐ ","๐ก","๐ฆ","๐","๐ฆง","๐","๐ซ","๐พ","๐ฆฅ","๐ฆฆ","๐ฆจ","๐ต","๐","๐ด","๐ป","๐","๐น","๐ธ","๐ผ","โญ๏ธ","๐","๐ฅ","โ๏ธ","๐","๐","๐ฅฅ","๐ฅฉ","๐ง","๐","๐ค","๐ฅ","๐ฟ","๐","๐ช","๐ฉ","๐ง","โฝ๏ธ","๐","๐","๐","๐ฒ","๐","โ๏ธ","๐","๐ฟ","๐","๐ฐ","๐","๐","๐งผ","๐ฆ ","๐","๐ฆ"]
        let emojis = emojisAll[randomPick: 9]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
