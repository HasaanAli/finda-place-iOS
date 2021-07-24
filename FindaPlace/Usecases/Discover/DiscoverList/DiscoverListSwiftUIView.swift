//
//  DiscoverListSwiftUIView.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 24/07/2021.
//

import SwiftUI

struct DiscoverListSwiftUIView: View {
//    @ObservedObject var
        let items: [DiscoverListItemViewModel]
    var body: some View {
        List(items) { item in

            DiscoverListItemSwiftUIView(viewModel: item)

        }
    }
}

struct DiscoverListSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverListSwiftUIView(items: [DiscoverListItemViewModel.previewItem1])
    }
}
