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
        VStack {
            DiscoverPickerSwiftUIView(viewModel: viewModel.pickerViewModel)
        }
    }
}

struct DiscoverSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverSwiftUIView(viewModel: DiscoverViewModel())
    }
}
