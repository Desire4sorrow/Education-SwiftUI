//
//  ContentView.swift
//  Toggle-side-menu
//
//  Created by Omega on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isChoosing = false
    @State var offset: CGFloat = 400.0
    
    var menuStack: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 16).fill(Color.yellow)
            VStack(alignment: .leading, spacing: 20) {
                makeButton(buttonText: "Profile")
                makeButton(buttonText: "Map")
                makeButton(buttonText: "Support")
                makeButton(buttonText: "Exit")
            }
        }
    }
    
    var body: some View {
        VStack {
            ZStack {
                menuStack
                RoundedRectangle(cornerRadius: 16).fill( isChoosing ? Color.mint : Color.red).offset(x: isChoosing ? 200 : 0)
            }
            Toggle(isOn: $isChoosing, label: {
                Text("Do you want to change View's color")
            }).padding()
        }.animation(Animation.spring(response: 0.5,
                                     dampingFraction: 0.5,
                                     blendDuration: 0.5))
    }
    
    func makeButton(buttonText: String) -> some View {
        Button(action: { self.isChoosing = false },
               label: { Text(buttonText).font(.system(size: 30)) }).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
