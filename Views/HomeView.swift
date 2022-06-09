//
//  HomeView.swift
//  Memorize (iOS)
//
//  Created by Lucas Machado (Estudos) on 08/06/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 100) {
            
            Spacer()
            
            Text("Memorize")
                .font(.system(size: 48, weight: .bold, design: .serif))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .italic()
            
//            Spacer()
            
            Button {
                print("Clicou")
            } label: {
                
                PrimaryButton(image: "play", showImage: true, text: "Jogar")
            }

            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("ColorDark"))
        
    }
        
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
