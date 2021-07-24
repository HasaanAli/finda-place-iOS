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
    @State private var selectedStrength = "Mild"
       let strengths = ["Mild", "Medium", "Mature"]

       var body: some View {
           NavigationView {
               Form {
                   Section {
                       Picker("Strength", selection: $selectedStrength) {
                           ForEach(strengths, id: \.self) {
                               Text($0)
                           }
                       }
//                       .pickerStyle(WheelPickerStyle())
                   }
               }
               .navigationTitle("Finda Place")
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
