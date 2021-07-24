//
//  DiscoverPickerSwiftUIView.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 24/07/2021.
//

import SwiftUI

struct DiscoverPickerSwiftUIView: View {
    @ObservedObject var viewModel: DiscoverPickerViewModel

    var body: some View {
        HStack {
        TextField("", text: $viewModel.discoverPickerCategory)
        TextField("", text: $viewModel.discoverPickerLocation)
        }

    }
}

struct DiscoverPickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPickerSwiftUIView(viewModel: DiscoverPickerViewModel())
    }
}
