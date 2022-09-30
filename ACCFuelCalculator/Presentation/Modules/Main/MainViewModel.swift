//
//  MainViewModel.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 3/10/22.
//

import Foundation

class MainViewModel: BaseViewModel<MainCoordinator> {

}

extension MainViewModel {

    static var sample: MainViewModel {
        let coordinator = MainCoordinator()
        let viewModel = DependencyInjector.shared.getMainViewModel(coordinator: coordinator)
        return viewModel
    }
}
