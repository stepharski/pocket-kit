//
//  UIView+Styling.swift
//  CatchEmAll
//
//  Created by Stepan Kukharskyi on 5/30/25.
//

import UIKit

extension UIView {
    func roundCorners(radius: CGFloat = 10) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }

    func addOutline(color: UIColor = .systemGray5, width: CGFloat = 1.0) {
        layer.borderColor = color.cgColor 
        layer.borderWidth = width
    }

    func dropShadow(
        shouldRasterize: Bool = true,
        color: CGColor = UIColor.black.cgColor,
        opacity: Float = 0.2,
        radius: CGFloat = 4.0,
        offset: CGSize = CGSize(width: 3, height: 3)
    ) {
        layer.masksToBounds = false
        layer.shadowColor = color
        layer.shadowRadius = radius
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
        layer.shouldRasterize = shouldRasterize
        layer.rasterizationScale = shouldRasterize ? UIScreen.main.scale : 1.0
    }
}

