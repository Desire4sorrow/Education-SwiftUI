//
//  ContentView.swift
//  Picker_Navigation_View
//
//  Created by Omega on 30.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var timeSection = 0
    @State var locationSection = 0
    @State var transportSection = 0
    @State var conditionsSection = 0
    @State var needChildChair = false
    
    var variableTime = ["5 min", "10 min", "15 min", "20 min", "30 min", "1 hour"]
    var variableLocation = ["Yoshkar-Ola", "Cheboksary", "Kazan", "Schemshurga", "Shoibulak", "Medvedevo"]
    var variableTransport = ["Car", "Bus", "Train"]
    var variableConditions = ["Food", "Drink", "Beer", "Rubber pad"]
    
    var timePicker: some View {
        Picker(selection: $timeSection,
               content: {
            ForEach(0..<variableTime.count) {
                Text(self.variableTime[$0])
            }
        },
               label: {
            Text("Choose time")
        })
    }
    
    var locationPicker: some View {
        Picker(selection: $locationSection,
               content: {
            ForEach(0..<variableLocation.count) {
                Text(self.variableLocation[$0])
            }
        },
               label: {
            Text("Choose your location")
        })
    }
    
    var transportPicker: some View {
        Picker(selection: $transportSection,
               content: {
            ForEach(0..<variableTransport.count) {
                Text(self.variableTransport[$0])
            }
        },
               label: {
            Text("Choose transport")
        })
    }
    
    var childChair: some View {
        Toggle(isOn: $needChildChair, label: {
            Text("Add child chair").foregroundColor(needChildChair ? Color.black : Color.gray)
        })
    }
    
    var additionalConditions: some View {
        Picker(selection: $conditionsSection,
               content: {
            ForEach(0..<variableConditions.count) {
                Text(self.variableConditions[$0])
            }
        },
               label: {
            Text("Choose additional conditions")
        })
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    timePicker
                })
                Section(content: {
                    locationPicker
                })
                Section(content: {
                    transportPicker
                })
                Section(content: {
                    childChair
                })
                Section(content: {
                    if self.needChildChair {
                        additionalConditions
                    }
                })
            }.navigationTitle("Home Page").lineSpacing(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
