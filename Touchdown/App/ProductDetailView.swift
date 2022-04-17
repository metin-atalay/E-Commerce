//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Metin Atalay on 17.04.2022.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NAVBAR
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //HEADER
            
            HeaderDetailView()
                .padding(.horizontal)
            
            //DETAIL TOP PART
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //DETAIL BUTTOM PART
            
            VStack(alignment: .center, spacing: 0) {
                //RATING + SIZES
                RatingSizesDetailView()
                    .padding(.top, -10*2 )
                    .padding(.bottom, 10)
                
                //DESCRIPTION
                
                ScrollView(.vertical,showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.leading)
                } //: SCROLL
                
                // QUANTITIY + FAV
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                //ADD TO CART
                
                AddToCartDetailView()
                
                Spacer()
            } //: VSTACK
            .padding()
            .zIndex(0)
            .background(Color.white.clipShape(CustomShape())
                            .padding(.top, -105))
            
            
            
        } //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
          Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
          ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
