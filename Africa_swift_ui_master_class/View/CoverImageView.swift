//
//  CoverImageView.swift
//  Africa_swift_ui_master_class
//
//  Created by Mark Amoah on 17/08/2025.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: Properties
    let coverImages:[CoverImageModel]?  = Bundle.main.decode("covers.json")
    //MARK: Body
    var body: some View {
        TabView{
            ForEach(coverImages ?? []) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFill()
            } 
        }.tabViewStyle(.page)
        
    }
}

//MARK: Preview
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}
