//
//  BaseViewModel.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 3/10/22.
//

import Foundation

protocol ViewModelDependencies {
    associatedtype Coordinator
    func getCoordinator() -> Coordinator?
}

protocol LifecycleViewProtocol: AnyObject {
    func onLoad()
    func onAppear()
    func onDisappear()
}

class BaseViewModel<Coordinator>: ViewModelDependencies, LifecycleViewProtocol, ObservableObject {

    // MARK: - Properties

    private let coordinator: BaseCoordinatorProtocol

    // MARK: - Initializer

    init(coordinator: BaseCoordinatorProtocol) {
        self.coordinator = coordinator
    }

    // MARK: - Functions

    func getCoordinator() -> Coordinator? {
        return coordinator as? Coordinator
    }

    func onLoad() {}

    func onAppear() {}

    func onDisappear() {}
}
