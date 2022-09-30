//
//  DependencyInjector.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 3/10/22.
//

import Foundation

class DependencyInjector {

    // MARK: - Singleton

    static let shared = DependencyInjector()

    // MARK: - ViewModel

    func getMainViewModel(coordinator: MainCoordinator) -> MainViewModel {
        return MainViewModel(coordinator: coordinator)
    }
}
