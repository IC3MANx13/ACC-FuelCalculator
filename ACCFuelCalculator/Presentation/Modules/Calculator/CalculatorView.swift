//
//  CalculatorView.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 5/10/22.
//

import SwiftUI

struct CalculatorView: View {

    @ObservedObject var viewModel: CalculatorViewModel

    var body: some View {
        VStack {
            TextField("", text: $viewModel.textFieldValue)
            .textFieldStyle(.roundedBorder)
            Spacer()
            Text(viewModel.fuel)
            Spacer()
            Button("Button") {
                viewModel.onCalculateFuel()
            }
            .padding()
            .disabled(viewModel.textFieldValue.isEmpty)
        }
        .padding()
        .onSetLifecycle(viewModel)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView(viewModel: CalculatorViewModel.sample)
    }
}
