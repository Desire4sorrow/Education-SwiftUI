//
//  BasketView.swift
//  TabViewWithBinding
//
//  Created by Omega on 07.06.2022.
//

import SwiftUI

struct BasketView: View {
    
    @State private var products = [DishModel]()
    
    var body: some View {
        NavigationView {
            List {
                if ItemListView.products.isEmpty {
                    Text("Ваша корзина пуста")
                }
                ForEach(products) { dish in
                    MenuRow(dish: dish)
                }
                .onDelete(perform: removeRows)
            }
            .navigationTitle("Корзина")
            .toolbar {
                EditButton()
            }
            .onAppear {
                products = Array(Set(ItemListView.products + products))
            }
        }
        .badge(products.count)
        .tabItem {
            Image(systemName: "bag.fill")
            Text("Basket")
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        products.remove(atOffsets: offsets)
        ItemListView.products = products
    }
}
