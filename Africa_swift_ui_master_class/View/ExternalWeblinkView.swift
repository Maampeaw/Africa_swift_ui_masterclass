//
//  ExternalWeblinkView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct ExternalWeblinkView: View {
    //MARK: Properties
    let animal: Animal
    var body: some View {
        GroupBox{
            HStack{
                Label("Wikipedia", systemImage: "globe")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string:animal.link) ?? URL(string: "https://www.wikipedia.org")!)
                }.foregroundStyle(.accent)
            }
            
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let animal = Animal.getAllAnimals().first!
    ExternalWeblinkView(animal: animal)
}
