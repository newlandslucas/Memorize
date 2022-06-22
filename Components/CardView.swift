//
//  CardView.swift
//  Memorize (iOS)
//
//  Created by Lucas Machado (Estudos) on 01/06/22.
//

import SwiftUI


struct CardView: View {
    
    var card: MemoryGame<String>.Card
    
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                              .fill(Color.white)
                              .frame(width: 100, height: 150)
                          RoundedRectangle(cornerRadius: 10.0)
                              .stroke(lineWidth: 3)
              
              
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10)
                    .fill()
                    .frame(width: 100, height: 150)
            }
        }
        .padding(.horizontal, 10)
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
        .frame(width: 100, height: 150)
    }
}
