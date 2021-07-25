//
//  DiscoverSwiftUIView.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 24/07/2021.
//

import SwiftUI

struct DiscoverSwiftUIView: View {
    @ObservedObject var viewModel: DiscoverViewModel

    var body: some View {
        VStack(spacing: 0) {
            DiscoverPickerSwiftUIView(viewModel: viewModel.pickerViewModel)
            DiscoverListSwiftUIView(items: viewModel.items)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct DiscoverSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverSwiftUIView(viewModel: DiscoverViewModel())
    }
}
