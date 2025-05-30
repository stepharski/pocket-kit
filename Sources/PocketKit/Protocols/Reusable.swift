//
//  Reusable.swift
//  CatchEmAll
//
//  Created by Stepan Kukharskyi on 5/30/25.
//

import Foundation

public protocol Reusable {
    static var identifier: String { get }
}

public extension Reusable {
    static var identifier: String {
        return String(describing: Self.self)
    }
}
