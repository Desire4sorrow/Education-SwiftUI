//
//  ContentView.swift
//  Sample-Alert-SwiftUI
//
//  Created by Omega on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isAlert = false
    @State var isSheet = false
    
    var body: some View {
        button
        secondButton
    }
    
    var button: some View {
        Button(action: {
            self.isAlert = true
        }, label: {
            Text("Alert")
        }).alert(
            isPresented: $isAlert,
            content: {
                showAlert()
            })
    }
    
    func showAlert() -> Alert {
        Alert(title: Text("Alert"),
                     message: Text("Are you sure?"),
                     primaryButton: .destructive(Text("Cancel")),
                     secondaryButton: .cancel(Text("Continue")))
    }
    
    var secondButton: some View {
        Button(action: {
            self.isSheet = true
        }, label: {
            Text("Sheet")
        }).actionSheet(isPresented: $isSheet,
                       content: {
            showSheet()
        })
    }
    
    func showSheet() -> ActionSheet {
        ActionSheet(title: Text("Continue"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
