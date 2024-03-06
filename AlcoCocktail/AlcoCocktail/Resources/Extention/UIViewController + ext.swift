//
//  UIViewControlle + ext.swift
//  Art
//
//  Created by Daria on 05.03.2024.
//

import UIKit

extension UIViewController {
    
    func presentAlcoAlertOnMainTread (title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = AlcoAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle   = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
