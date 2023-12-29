//
//  Coconut.swift
//  CoordinatorSwiftUI
//
//  Created by Macbook on 29/12/23.
//

import SwiftUI

struct CoconutView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List {
            Button("Dissmis") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("🥥")
    }
}

struct Coconut_Previews: PreviewProvider {
    static var previews: some View {
        CoconutView()
    }
}
