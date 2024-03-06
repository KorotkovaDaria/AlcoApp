//
//  ArtButton.swift
//  Art
//
//  Created by Daria on 05.03.2024.
//

import UIKit

class AlcoButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: String, title: String, name: String, size: CGFloat) {
        super.init(frame: .zero)
        self.backgroundColor  = UIColor(named: backgroundColor)
        self.titleLabel?.font = UIFont(name: name, size: size)
        self.setTitle(title, for: .normal)
        
    }
    
    
    private func configure() {
        layer.cornerRadius    = 10
        translatesAutoresizingMaskIntoConstraints = false
    }
}

