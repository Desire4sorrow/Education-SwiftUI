//
//  HomeView.swift
//  TabViewWithBinding
//
//  Created by Omega on 07.06.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image("home-sky")
                .ignoresSafeArea(edges: .top)
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 300, height: 300)
                .foregroundColor(Color.blue.opacity(0.15))
            VStack {
                Text("Добро пожаловать!")
                    .font(.title)
                    .padding()
                Text("Чтобы выбрать необходимые Вам\n товары, выберите их из списка")
                    .padding()
                    .frame(alignment: .center)
                    .foregroundColor(Color.pink.opacity(0.8))
                Text("С любовью")
                    .font(.footnote)
                    .foregroundColor(Color.white)
            }
        }
        .frame(alignment: .top)
        .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
        }
    }
}
