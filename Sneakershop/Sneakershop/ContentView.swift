//
//  ContentView.swift
//  Sneakershop
//
//  Created by Omega on 31.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var segmentIndex = 0
    @State var offsetX = 0
    
    var companies = ["Nike", "Adidas", "Puma"]
    var sneakers = ["nike", "adidas", "puma"]
    
    var content: some View {
        ForEach(0..<companies.count) {
            Text(self.companies[$0])
                .tag($0)
        }
    }
    
    var bindingData: Binding<Int> {
        Binding(get: { segmentIndex },
                                  set: { newValue in
            segmentIndex = newValue
            offsetX = -500
            moveBack()
        } )
    }
    
    var body: some View {
        VStack {
            Text("Выбранный бренд - \(companies[segmentIndex])")
                .font(Font.title)
                .padding()
            
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .offset(x: CGFloat(offsetX))
                Image(sneakers[segmentIndex])
                    .resizable()
                    .frame(width: 375, height: 300)
                    .offset(x: CGFloat(offsetX))
            }.animation(Animation.spring(response: 1.5,
                                         dampingFraction: 1))
            
            Picker(selection: bindingData,
                   content: { content },
                   label: { Text("Выберите") }
            ).pickerStyle(SegmentedPickerStyle())
                .padding()
            
            Spacer()
                .frame(height: 300)
        }
    }
    
    private func moveBack() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.offsetX = 0
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
