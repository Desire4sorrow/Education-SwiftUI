//
//  BrandView.swift
//  NavigationViewMode
//
//  Created by Omega on 06.06.2022.
//

import SwiftUI

struct BrandView: View {
    
    var brandType: String
    var brandImage: String
    
    let bmwList = ["X1", "X2", "X3", "M1", "M2", "M3"]
    let ladaList = ["Priora", "Kalina", "Granta", "2112", "Vesta"]
    let mitsubishiList = ["Mitsubishi Lancer 8 2008", "Mitsubishi Lancer 10 2010", "Mitsubishi Pajero 2006", "Mitsubishi Outlander 2020"]
    
    func configureModels() -> CarBrandModelView {
        switch brandType {
        case "BMW":
            return CarBrandModelView(modelList: bmwList, imageList: ["bmw"])
        case "Lada":
            return CarBrandModelView(modelList: ladaList, imageList: ["lada", "lada", "lada", "lada", "lada"])
        case "Mitsubishi":
            return CarBrandModelView(modelList: mitsubishiList, imageList: ["lancer-8", "lancer-evo", "pajero", "outlander"])
        default:
            return CarBrandModelView(modelList: ["unavailable"], imageList: [""])
        }
    }
    
    var body: some View {
        VStack {
            NavigationLink(destination: configureModels, label: {
                VStack {
                    Text(brandType).foregroundColor(Color.getRandomColor())
                    Image(brandImage)
                        .resizable()
                        .frame(width: 115, height: 100)
                        .offset()
                }
            })
        }
    }
}
