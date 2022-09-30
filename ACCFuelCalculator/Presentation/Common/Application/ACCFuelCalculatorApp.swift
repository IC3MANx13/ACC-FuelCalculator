//
//  ACCFuelCalculatorApp.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 30/9/22.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct ACCFuelCalculatorApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            let coordinator = MainCoordinator()
            MainView(viewModel: DependencyInjector.shared.getMainViewModel(coordinator: coordinator))
        }
    }
}
