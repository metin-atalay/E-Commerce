//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Metin Atalay on 17.04.2022.
//

import SwiftUI

struct CategoryItemView: View {
    
    let category: Category
    
    var body: some View {
        Button(action: {
            
        }) {
            
            HStack(alignment: .center, spacing: 6) {
               
                Image(category.image)
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .background(Color.white.cornerRadius(12))
                    .foregroundColor(.gray)
               
                Spacer()
                
            } //: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1))
            
        }//: BUtoon
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[2])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
