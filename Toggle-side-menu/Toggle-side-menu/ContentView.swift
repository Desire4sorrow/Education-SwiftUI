//
//  ContentView.swift
//  Toggle-side-menu
//
//  Created by Omega on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isChoosing = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16).fill(Color.mint).offset(x: isChoosing ? 100 : 0)
            Toggle(isOn: $isChoosing, label: {
                Text("Вы действительно этого хотите?")
            }).padding().offset(x: isChoosing ? 50 : -50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
