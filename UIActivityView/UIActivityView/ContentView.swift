//
//  ContentView.swift
//  UIActivityView
//
//  Created by Omega on 31.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSharePresented = false
    
    let customActivity = CustomActivity(title: "Telegram", imageName: "telegram") {
        UIApplication.shared.open(URL(string: "https://omega-r.ru")!)
    }
    var body: some View {
        Button("Share with") {
            isSharePresented = true
        }
        .sheet(isPresented: $isSharePresented) {
            ActivityView(activityItems: ["Поделиться информацией с помощью"], applicationActivities: [customActivity])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
