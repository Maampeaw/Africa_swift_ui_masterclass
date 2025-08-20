//
//  GalleryView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct GalleryView: View {
    
    let animals = Animal.getAllAnimals();
    
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var selectedAnimal: String = "lion"
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    
    @State private var gridCount: Double = 3
    
    
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridCount))
    }
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 10) {
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(style: StrokeStyle(lineWidth: 8)))
                
                Slider(value: $gridCount, in: 2...4, step: 1){
                    
                }.onChange(of: gridCount) { oldValue, newValue in
                    gridSwitch()
                }
                    
                LazyVGrid(columns: gridLayout) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(style: StrokeStyle(lineWidth: 1))
                            }
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                        
                    }
                }
                .animation(.easeIn)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
            
           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
        .onAppear{
            gridSwitch()
        }
    }
}

#Preview {
    GalleryView()
}
