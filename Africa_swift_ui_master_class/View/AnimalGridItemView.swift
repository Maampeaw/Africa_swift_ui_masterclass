//
//  AnimalGridItemView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 21/08/2025.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    let animal = Animal.getAllAnimals().first!
    AnimalGridItemView(animal: animal)
}
