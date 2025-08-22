//
//  ContentView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    let animals = Animal.getAllAnimals()
    @State private var isGridViewActive: Bool = false
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    @State private var gridItems = [GridItem(.flexible())]
    @State private var icon = "square.grid.2x2"
    
    func updateGridItems() {
        updateIcon()
        gridItems = Array(repeating: GridItem(.flexible()), count: gridItems.count % 3 + 1)
        
    }
    
    func updateIcon(){
        switch gridItems.count % 3{
        case 0:
            icon = "rectangle.grid.1x2"
        case 1:
            icon = "square.grid.2x2"
        case 3:
            icon = "square.grid.3x3"
        default:
            icon = "square.grid.3x3"
            
        }
    }
    
    var body: some View {
        NavigationView {
            Group{
                if !isGridViewActive  {
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
                    .listStyle(.plain)
                } else {
                    ScrollView(.vertical){
                        LazyVGrid(columns: gridItems) {
                            ForEach(animals) { animal  in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                }
                            }
                        }
                    }
                    
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 10) {
                        //List
                        Button {
                            haptics.impactOccurred()
                            isGridViewActive = false
                        } label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title)
                                .foregroundStyle( !isGridViewActive ? .accent : .primary)
                        }
                        
                        //Grid
                        Button{
                            
                                withAnimation {
                                    updateGridItems()
                                }
                           

                            haptics.impactOccurred()
                            isGridViewActive = true
                        } label: {
                            Image(systemName: icon)
                                .font(.title)
                                .foregroundStyle( isGridViewActive ? .accent : .primary)
                        }

                        
                    }
                }
            }
            .onAppear{
                updateGridItems()
            }
        }
    }
}

#Preview {
    ContentView()
}
