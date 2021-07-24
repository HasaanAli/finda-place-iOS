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
        let item1 = DiscoverListItemViewModel(image: nil, name: "Elevens", address: "Bypass road",
                                              rating: 3, ratingCount: 55, price: 3, distance: 24)
        DiscoverListSwiftUIView(items: [item1])
    }
}
