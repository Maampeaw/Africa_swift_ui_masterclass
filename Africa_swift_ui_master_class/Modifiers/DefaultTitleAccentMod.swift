//
//  DefaultTitleAccentMod.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 20/08/2025.
//

import SwiftUI


struct DefaultTitleAccentMod: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundStyle(.accent)
    }
    
    
}

extension View{
    
    func defaultTitleAccent() -> some View {
        self.modifier(DefaultTitleAccentMod())
    }
}
