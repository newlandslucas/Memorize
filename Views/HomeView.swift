//
//  HomeView.swift
//  Memorize (iOS)
//
//  Created by Lucas Machado (Estudos) on 08/06/22.
//

import SwiftUI

struct HomeView: View {
    @State private var isAnimating: Bool = false
    @State private var imageOffset: CGSize = .zero
    @State private var indicatorOpacity: Double = 1.0
    
    var body: some View {
        VStack(spacing: 50) {
            
            Spacer()
            
            Text("Memorize")
                .font(.system(size: 48, weight: .bold, design: .serif))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .italic()
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Text("🎃")
                    .font(.system(size: 100, weight: .semibold, design: .serif))
                    .scaledToFit()
                    .padding()
                    .animation(Animation.easeOut(duration: 4).repeatForever(), value: isAnimating)
            }
            
           
            
            
            
         Spacer()
            
            Button {
                print("Clicou")
            } label: {
                
                PrimaryButton(image: "play", showImage: true, text: "Jogar")
            }

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
