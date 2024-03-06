//
//  AlcoCocktailCell.swift
//  AlcoCocktail
//
//  Created by Daria on 06.03.2024.
//

import UIKit

class AlcoCocktailCell: UICollectionViewCell {
    static var reuseID = "AlcoCocktailCell"
    let mainImageView = AlcoImageView(frame: .zero)
    let cocktailLabel = AlcoLabel(textAlignment: .center, font: Resources.Fonts.cormorantMedium, fontSize: 16, color: Resources.Colors.green)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set (cocktail: Drink) {
        cocktailLabel.text = cocktail.strDrink
    }
    
    private func configure() {
        addSubview(mainImageView)
        addSubview(cocktailLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            mainImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            mainImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            mainImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            mainImageView.heightAnchor.constraint(equalTo: mainImageView.widthAnchor),
            
            cocktailLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 12),
            cocktailLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            cocktailLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            cocktailLabel.heightAnchor.constraint(equalToConstant: 20)
            
        ])
    }
}
