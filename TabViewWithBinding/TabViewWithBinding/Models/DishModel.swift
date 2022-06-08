//
//  DishModel.swift
//  TabViewWithBinding
//
//  Created by Omega on 08.06.2022.
//

import Foundation
import SwiftUI

struct DishModel: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var cuisine: String
    var price: Int
    var imageName: String
}

extension DishModel {
    var image: Image {
        RestaurantImageStore.shared.image(name: imageName)
    }
}
