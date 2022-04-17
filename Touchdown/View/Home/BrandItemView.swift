//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Metin Atalay on 17.04.2022.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    
    let brand: Brand
    
    // MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(.white)
            .cornerRadius(12)
            .background(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1))
    }
}

// MARK: - PREVIEW
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
