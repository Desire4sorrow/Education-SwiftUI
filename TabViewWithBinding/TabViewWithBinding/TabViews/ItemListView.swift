//
//  ItemListView.swift
//  TabViewWithBinding
//
//  Created by Omega on 07.06.2022.
//

import SwiftUI

struct ItemListView: View {
    var body: some View {
        ZStack {
            Image("home-sky")
                .ignoresSafeArea(edges: .top)
        }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Item list")
            }
    }
}

