//
//  AlcoImageView.swift
//  AlcoCocktail
//
//  Created by Daria on 06.03.2024.
//

import UIKit

class AlcoImageView: UIImageView {
    
    let plaseholderImage = UIImage(named: "Defult")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds      = true
        image              = plaseholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
