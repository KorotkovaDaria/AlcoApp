//
//  NonAlcoCocktail.swift
//  AlcoCocktail
//
//  Created by Daria on 06.03.2024.
//

import Foundation

struct CocktailResponse: Codable {
    let drinks: [Drink]
}

struct Drink: Codable {
    let strDrink: String
    let strDrinkThumb: String
    let idDrink: String
}




