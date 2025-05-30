//
//  Collection+Extensions.swift
//  CatchEmAll
//
//  Created by Stepan Kukharskyi on 5/30/25.
//

import Foundation

extension Collection {
    // MARK: Safe Call
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
