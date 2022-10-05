//
//  MainView.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 30/9/22.
//

import SwiftUI

struct MainView: View {

    @ObservedObject var mainViewModel: MainViewModel
    @ObservedObject var calculatorViewModel: CalculatorViewModel
    @State var selectedItem: Int = 0

    init(mainViewModel: MainViewModel,
         calculatorViewModel: CalculatorViewModel) {
        self.mainViewModel = mainViewModel
        self.calculatorViewModel = calculatorViewModel
        setUpTabbar()
    }

    var body: some View {
        TabView(selection: $selectedItem) {
            Text("Tab Content 1").tabItem {
                Image(systemName: "heart.fill")
                Text("Calculator")
            }.tag(0)
            Text("Tab Content 2").tabItem {
                Image(systemName: "heart.fill")
                Text("Tab Label 2")
            }.tag(1)
        }
        .onSetLifecycle(mainViewModel)
    }

    // MARK: - Private functions

    private func setUpTabbar() {
        let image = UIImage.gradientImageWithBounds(
            bounds: CGRect( x: .zero, y: .zero, width: UIScreen.main.scale, height: 8),
            colors: [
                UIColor.clear.cgColor,
                UIColor.black.withAlphaComponent(0.1).cgColor
            ]
        )
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .black
        appearance.backgroundImage = UIImage()
        appearance.shadowImage = image
        UITabBar.appearance().standardAppearance = appearance
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(mainViewModel: MainViewModel.sample,
                 calculatorViewModel: CalculatorViewModel.sample)
    }
}
