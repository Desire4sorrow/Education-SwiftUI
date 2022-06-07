//
//  ItemListView.swift
//  TabViewWithBinding
//
//  Created by Omega on 07.06.2022.
//

import SwiftUI

struct ItemListView: View {
    var body: some View {
        Text("Another Tab")
            .tabItem {
                Image(systemName: "book.fill")
                Text("Item list")
            }
    }
}

