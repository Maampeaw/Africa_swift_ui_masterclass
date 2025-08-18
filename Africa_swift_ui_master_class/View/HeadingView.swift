//
//  HeadingView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct HeadingView: View {
    let headingImage: String
    let headingTitle: String
    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            Text(headingTitle)
                .font(.title3)
                .fontWeight(.bold)
        }.padding(.vertical)
    }
}

#Preview {
    HeadingView(headingImage: "photo", headingTitle: "Wilderness in picture")
}
