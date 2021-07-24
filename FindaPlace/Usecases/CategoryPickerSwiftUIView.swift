//
//  CategoryPickerSwiftUIView.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 20/07/2021.
//

import SwiftUI

struct CategoryPickerSwiftUIView: View {
    @ObservedObject var viewModel: CategoryPickerViewModel 

    var body: some View {
        Picker(viewModel.title, selection: $viewModel.selection) {
            ForEach(viewModel.pickerOptions, id: \.self) {
                Text($0)
            }
        }
    }
}

struct CategoryPickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = CategoryPickerViewModel(title: "Finda", pickables: ["Mosque", "Hotel"])
        
        CategoryPickerSwiftUIView(viewModel: viewModel)
    }
}
