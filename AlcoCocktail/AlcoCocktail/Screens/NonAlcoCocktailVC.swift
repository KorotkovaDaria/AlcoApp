//
//  nonAlcoCocktailVC.swift
//  Alco
//
//  Created by Daria on 06.03.2024.
//

import UIKit

class NonAlcoCocktailVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: Resources.Colors.yellow)
        
        NetworkManager.shared.getNonAlcoCocktail { cocktails, errorMessage in
            guard let cocktails = cocktails else {
                self.presentAlcoAlertOnMainTread(title: "Bad stuff happend", message: errorMessage!.rawValue, buttonTitle: "Ok")
                return
            }
            
            print(cocktails.count)
                }
    }
}
