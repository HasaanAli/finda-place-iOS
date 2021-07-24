//
//  DiscoverListItemViewModel.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 24/07/2021.
//

import SwiftUI

struct DiscoverListItemViewModel: Identifiable {
    let id = UUID()
    let image: Image?
    let name: String
    let address: String
    let rating: Int // from 5
    let ratingCount: Int
    let price: Int
    let distance: Double

    static let previewItem1: DiscoverListItemViewModel = { 
        let item = DiscoverListItemViewModel(image: nil, name: "Elevens", address: "Bypass road",
                                              rating: 3, ratingCount: 55, price: 3, distance: 24)
        return item
    }()
}



