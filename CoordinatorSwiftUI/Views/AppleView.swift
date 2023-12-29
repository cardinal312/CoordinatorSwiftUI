//
//  AppleView.swift
//  CoordinatorSwiftUI
//
//  Created by Macbook on 29/12/23.
//

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        NavigationView {
            List {
                Button("Push 🍌") {
                    coordinator.push(.banana)
                }
                
                Button("Present 🍋") {
                    coordinator.present(sheet: .lemon)
                }
                
                Button("Present 🫒") {
                    coordinator.present(fullScreenCover: .olive)
                }
            }
            .navigationTitle("Apple View 🍎")
        }
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
