//
//  ArtTitleLabel.swift
//  Art
//
//  Created by Daria on 05.03.2024.
//

import UIKit

class AlcoLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init (textAlignment: NSTextAlignment, font: String ,fontSize: CGFloat, color: String) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font          = UIFont(name: font, size: fontSize)
        self.textColor     = UIColor(named: color)
        configure()
    }
    
    private func configure() {
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor        = 0.75
        lineBreakMode             = .byWordWrapping
        numberOfLines             = 0
        translatesAutoresizingMaskIntoConstraints = false
    }

}
