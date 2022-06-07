//
//  HomeView.swift
//  TabViewWithBinding
//
//  Created by Omega on 07.06.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("The First Tab")
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
    }
}
