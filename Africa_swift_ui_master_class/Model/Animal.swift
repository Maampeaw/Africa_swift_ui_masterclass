//
//  Animal.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import Foundation
struct Animal: Decodable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let image: String
    let link: String
    let fact: [String]
    let gallery: [String]
    let description: String
    
    static func getAllAnimals() -> [Animal] {
        let allAnimals: [Animal]? = Bundle.main.decode("animals.json")
        return allAnimals ?? []
    }
}
