//
//  ContentView.swift
//  Animations
//
//  Created by Omega on 09.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Image("lancer-evo", bundle: nil)
                .resizable()
                .frame(width: 300, height: 250)
                .padding()
                .scaleEffect(animationAmount)
                .overlay() {
                    RoundedRectangle(cornerRadius: 1)
                        .stroke(.red)
                        .scaleEffect(animationAmount)
                        .opacity(2 - animationAmount)
                }
                .animation(.easeInOut, value: animationAmount)
            Button("Tap here") {
                animationAmount += 0.1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(
                        .easeInOut(duration: 2)
                            .repeatForever(autoreverses: false),
                        value: animationAmount)
            )
            .onAppear {
                animationAmount = 2
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
