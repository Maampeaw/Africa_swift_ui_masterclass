//
//  InsetFactView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview {
    let animal = Animal.getAllAnimals().first
    InsetFactView(animal: animal!)
}
