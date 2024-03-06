//
//  ErrorMessage.swift
//  AlcoCocktail
//
//  Created by Daria on 06.03.2024.
//

import Foundation

enum AlcoError: String, Error {
    case invalidURL        = "This url created an invalid request. Please try again."
    case unableToComplete  = "Unable to complete your request. Please check your internet connection"
    case invalidResponse   = "Invalid response from the server. Please try again."
    case invalidData       = "The data received from the server was invalid. Please try again."
    case unableToFavorite  = "There was an error favoriting this user. Please try again"
    case alredyInFavorites = "You've alredy favorited this user. You must relly like them!"
}
