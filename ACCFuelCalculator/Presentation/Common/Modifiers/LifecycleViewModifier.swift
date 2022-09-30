//
//  LifecycleViewModifier.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 4/10/22.
//

import Foundation
import SwiftUI

// MARK: - LifecycleViewModifier

struct LifecycleViewModifier: ViewModifier {

    // MARK: - Properties

    let viewModel: Any

    // MARK: - View

    // For iOS 14.0.1 - 14.4 it should be done in main thread
    @MainActor public func body(content: Content) -> some View {
        content
            .onLoad(perform: {
                guard let viewModel = viewModel as? LifecycleViewProtocol else { return }
                viewModel.onLoad()
            })
            .onAppear(perform: {
                guard let viewModel = viewModel as? LifecycleViewProtocol else { return }
                viewModel.onAppear()
            })
            .onDisappear(perform: {
                guard let viewModel = viewModel as? LifecycleViewProtocol else { return }
                viewModel.onDisappear()
            })
            .onTapGesture {
                // Hide keyboard
                _ = UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
    }
}

// MARK: - ViewDidLoadModifier

struct ViewDidLoadModifier: ViewModifier {

    // MARK: - Properties

    @State private var didLoad = false
    private let action: (() -> Void)?

    // MARK: - Initializer

    init(perform action: (() -> Void)? = nil) {
        self.action = action
    }

    // MARK: - View

    func body(content: Content) -> some View {
        content.onAppear {
            if !didLoad {
                didLoad = true
                action?()
            }
        }
    }
}
