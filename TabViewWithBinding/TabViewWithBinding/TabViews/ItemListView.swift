//
//  ItemListView.swift
//  TabViewWithBinding
//
//  Created by Omega on 07.06.2022.
//

import SwiftUI
import Foundation

struct ItemListView: View {
    
    @UserDefaultsBacked(key: "selectedItems", defaultValue: [])
    static var products: [DishModel]
    @State private var selection = Set<DishModel>()
    @State private var editMode: EditMode = .inactive
    
    var body: some View {
        NavigationView {
            List(menuItems, id: \.self, selection: $selection) { item in
                VStack {
                    MenuRow(dish: item)
                }
            }
            .navigationTitle("Продукты")
            .toolbar {
                EditButton()
            }
            .environment(\.editMode, $editMode)
            .onChange(of: editMode) {
                if !$0.isEditing {
                    addItemsToBasket()
                }
            }
        }
        .tabItem {
            Image(systemName: "book.fill")
            Text("Item list")
        }
    }
    
    func addItemsToBasket() {
        ItemListView.products = Array(selection)
    }
}
