//
//  CategoryPickerViewModel.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 20/07/2021.
//

import Foundation

protocol CategoryPickerSelectable {

}

enum FindaCategory: CategoryPickerSelectable, CaseIterable {
    case hotel
    case mosque
}

class CategoryPickerViewModel: ObservableObject {
    let title: String
    @Published var selection: String?
    let pickerOptions: [String]

    init(title: String, pickables: [String]) {
        self.title = title
        self.pickerOptions = pickables
    }
}
