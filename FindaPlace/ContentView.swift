//
//  ContentView.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 17/07/2021.
//

import SwiftUI

enum PlaceType: String{
    case hotel
}

struct ContentView: View {
    @EnvironmentObject var discoverViewModel: DiscoverViewModel

    var body: some View {
        TabView {
            DiscoverSwiftUIView(viewModel: discoverViewModel)
                .tabItem {
                    Label("Discover", systemImage: "list.dash")
                }
            DiscoverSwiftUIView(viewModel: discoverViewModel)
                .tabItem {
                    Label("Search", systemImage: "list.dash")
                }

        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
