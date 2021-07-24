//
//  DiscoverPickerViewModel.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 24/07/2021.
//

import Foundation
class DiscoverPickerViewModel: ObservableObject {

//    @Published var discoverPickerCategory: DiscoverPickerCategory = .popular
    @Published var discoverPickerCategory: String = "Popular"
    @Published var discoverPickerLocation: String = "Nearby"

}
