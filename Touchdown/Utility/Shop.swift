//
//  Shop.swift
//  Touchdown
//
//  Created by Metin Atalay on 17.04.2022.
//

import Foundation

class Shop: ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}
