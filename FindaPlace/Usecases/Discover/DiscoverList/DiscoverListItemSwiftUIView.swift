//
//  DiscoverListItemSwiftUIView.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 24/07/2021.
//

import SwiftUI

struct DiscoverListItemSwiftUIView: View {
    let viewModel: DiscoverListItemViewModel

    var body: some View {
        VStack {
//            Image()
            Text(viewModel.name)
            Text(viewModel.address)
            Text("\(viewModel.rating)/5")
            Text("\(viewModel.ratingCount) votes")
//            Button()
        }
    }
}

struct DiscoverListItemSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverListItemSwiftUIView(viewModel: DiscoverListItemViewModel.previewItem1)
    }
}
