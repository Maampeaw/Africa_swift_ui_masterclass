//
//  AnimalDetailView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: Properties
    let animal: Animal
    //MARK: Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                //Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor.frame(height: 6).offset(y: 24))
                    
                // headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                //Gallery
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }.padding(.horizontal)
                //Facts
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingTitle: "Did you know ?")
                    InsetFactView(animal: animal)
                }.padding(.horizontal)
                // Description
                Group{
                    HeadingView(headingImage: "info.circle", headingTitle: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }.padding(.horizontal)
                
                // Map
                Group{
                    HeadingView(headingImage: "map", headingTitle: "National Parks")
                    InsetMapView()
                }.padding(.horizontal)
                
                //External Web Link
                Group{
                    HeadingView(headingImage: "books.vertical", headingTitle: "Learn more")
                    ExternalWeblinkView(animal: animal)
                }.padding(.horizontal)
            }
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
                
        }
    }
}

#Preview {
    let animal = Animal.getAllAnimals().first
    NavigationView {
        AnimalDetailView(animal: animal!)
    }
   
}
