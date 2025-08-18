//
//  InsetGalleryView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
               
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let animal = Animal.getAllAnimals().first!
    InsetGalleryView(animal: animal)
}
