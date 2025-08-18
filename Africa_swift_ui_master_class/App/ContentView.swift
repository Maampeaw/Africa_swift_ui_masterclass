//
//  ContentView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals = Animal.getAllAnimals()
        NavigationView {
            List{
                
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal  in
                   NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }

                }
                .listRowBackground(Color.clear)
                    
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

#Preview {
    ContentView()
}
