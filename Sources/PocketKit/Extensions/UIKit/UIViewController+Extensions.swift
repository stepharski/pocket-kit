//
//  File.swift
//  PocketKit
//
//  Created by Stepan Kukharskyi on 6/9/25.
//

import UIKit

public extension UIViewController {
    // MARK: Alert
    var isPresentingAlert: Bool {
        return presentedViewController is UIAlertController
    }

    func showAlert(title: String = "Oops!", message: String) {
        guard !isPresentingAlert else { return }
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "Got it", style: .default))
        present(alertVC, animated: true)
    }

    // MARK: Keyboard
    func dismissKeyboardOnTouchOutside() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}
