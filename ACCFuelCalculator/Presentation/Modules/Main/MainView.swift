//
//  MainView.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 30/9/22.
//

import SwiftUI

struct MainView: View {

    @ObservedObject var viewModel: MainViewModel

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onSetLifecycle(viewModel)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel.sample)
    }
}
