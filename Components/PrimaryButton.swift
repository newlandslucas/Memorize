//
//  PrimaryButton.swift
//  Memorize (iOS)
//
//  Created by Lucas Machado (Estudos) on 09/06/22.
//

import SwiftUI

struct PrimaryButton: View {
    var image: String?
    var showImage = true
    var text: String
    
    var body: some View {
        HStack {
            if showImage {
                Image(systemName: image ?? "play")
            }
            
            Text(text)
                .fontWeight(.semibold)
                .font(.headline)
        }
        .padding()
        .padding(.horizontal, 45)
        .background(.white)
        .cornerRadius(30)
        .shadow(radius: 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(image: "play", text: "Jogar")
    }
}
