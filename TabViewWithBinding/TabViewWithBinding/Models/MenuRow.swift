//
//  MenuRow.swift
//  TabViewWithBinding
//
//  Created by Omega on 08.06.2022.
//

import SwiftUI

struct MenuRow: View {
    var dish: DishModel
    var body: some View {
        HStack {
            dish.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(verbatim: dish.name)
            Spacer()
        }
    }
}
