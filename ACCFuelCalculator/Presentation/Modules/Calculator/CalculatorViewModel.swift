//
//  CalculatorViewModel.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 5/10/22.
//

import Foundation
import SwiftUI

class CalculatorViewModel: BaseViewModel<MainCoordinator> {

    // MARK: - Properties

    @Published var fuel: String = ""
    @Published var textFieldValue: String = ""

    func onCalculateFuel() {
        fuel = textFieldValue
    }

}

extension CalculatorViewModel {

    static var sample: CalculatorViewModel {
        let coordinator = MainCoordinator()
        let viewModel = DependencyInjector.shared.getCalculatorViewModel(coordinator: coordinator)
        return viewModel
    }
}
