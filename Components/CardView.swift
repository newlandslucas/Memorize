//
//  CardView.swift
//  Memorize (iOS)
//
//  Created by Lucas Machado (Estudos) on 01/06/22.
//

import SwiftUI


struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 3)
                
            
            Text("👻")
                
        }
        .padding(.horizontal, 10)
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}
