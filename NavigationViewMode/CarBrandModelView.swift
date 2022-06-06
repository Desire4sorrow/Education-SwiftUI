//
//  CarBrandModelView.swift
//  NavigationViewMode
//
//  Created by Omega on 06.06.2022.
//

import SwiftUI

struct CarBrandModelView: View {
    var modelList: [String]
    var imageList: [String]
    
    var content: some View {
        VStack {
            ForEach(0..<modelList.count) {
                Text(self.modelList[$0])
                    .tag($0)
                    .padding()
                    .background(Color.getRandomColor())
                    .cornerRadius(16)
                Image(self.imageList[$0])
                    .resizable()
                    .frame(width: 375, height: 300)
                    .tag($0)
                    .cornerRadius(16)
            }
        }
    }
    
    var columns: [GridItem] = Array(repeating: .init(.fixed(400)), count: 1)
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Модельный ряд")
                    .font(.title)
                Image("mitsubishi")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            LazyVGrid(columns: columns) {
                content
            }
        }
    }
}
