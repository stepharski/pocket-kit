//
//  Reusable.swift
//  CatchEmAll
//
//  Created by Stepan Kukharskyi on 5/30/25.
//

import Foundation

protocol Reusable {
    static var identifier: String { get }
}

extension Reusable {
    static var identifier: String {
        return String(describing: Self.self)
    }
}
