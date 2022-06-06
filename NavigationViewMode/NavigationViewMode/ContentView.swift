//
//  ContentView.swift
//  NavigationViewMode
//
//  Created by Omega on 06.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showWebView = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Выберите марку автомобиля").font(.title2)
                HStack {
                    BrandView(brandType: "BMW", brandImage: "bmw")
                    BrandView(brandType: "Lada", brandImage: "lada")
                    BrandView(brandType: "Mitsubishi", brandImage: "lancer-evo")
                        .navigationBarTitle("Главная страница")
                }
                
                Text("Наши адреса:")
                Text("Казань, ул. Сулайманбекова, д. 145, офис №2")
                Text("Чебоксары, ул. Ложечкова, д. 14, стр. 3")
                Text("Йошкар-Ола, ул. Лаптева, д.24")
                Text("д. Яктерлюбал, ул. Александрова, д.112")
            
                Spacer()
                
                Button {
                    showWebView.toggle()
                } label: {
                    Text("Больше информации")
                }
                .sheet(isPresented: $showWebView) {
                    WebView(url: URL(string: "https://omega-r.ru")!)
                }
            }.frame(height: 500, alignment: .topLeading)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
