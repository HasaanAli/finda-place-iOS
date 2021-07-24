//
//  DiscoverViewModel.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 24/07/2021.
//

import Foundation
import SwiftUI
import Combine

class DiscoverViewModel: ObservableObject {
    @Published var pickerViewModel: DiscoverPickerViewModel = DiscoverPickerViewModel()
}
