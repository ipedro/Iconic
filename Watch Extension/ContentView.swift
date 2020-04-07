//
//  ContentView.swift
//  Watch Extension
//
//  Created by Pedro Almeida on 11.03.20.
//  Copyright © 2020 Pedrofolio.com. All rights reserved.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    @Published
    var favorite: Bool = false
    
    
}

struct ContentView: View {
    @ObservedObject private var viewModel: ContentViewModel
    
    init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        let boolBinding = Binding<Bool>(get: { self.viewModel.favorite }, set: { self.viewModel.favorite = $0})
        
        return ScrollView {
            Text("Hello, World!")
            +
            Text(" ")
            +
            Text(String(self.viewModel.favorite))
                .foregroundColor(self.viewModel.favorite ? .red : .green)
            
            Toggle(isOn: boolBinding) {
                Text("Is Favorite")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ContentViewModel()
        return ContentView(
            viewModel: viewModel
        )
    }
}
