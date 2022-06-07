//
//  BasketView.swift
//  TabViewWithBinding
//
//  Created by Omega on 07.06.2022.
//

import SwiftUI

struct BasketView: View {
    var body: some View {
        ZStack {
            Image("home-sky")
                .ignoresSafeArea(edges: .top)
        }
            .badge(2)
            .tabItem {
                Image(systemName: "bag.fill")
                Text("Basket")
            }
    }
}
