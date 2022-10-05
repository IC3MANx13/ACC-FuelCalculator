//
//  Extensions.swift
//  ACCFuelCalculator
//
//  Created by ignacio.martin.local on 4/10/22.
//

import Foundation
import SwiftUI

extension View {

    func onLoad(perform action: (() -> Void)? = nil) -> some View {
        modifier(ViewDidLoadModifier(perform: action))
    }

    func onSetLifecycle(_ viewModel: Any) -> some View {
        return self.modifier(LifecycleViewModifier(viewModel: viewModel))
    }
}

extension UIImage {

    static func gradientImageWithBounds(bounds: CGRect, colors: [CGColor]) -> UIImage {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors

        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
        gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
