//
//  NetworkManager.swift
//  AlcoCocktail
//
//  Created by Daria on 06.03.2024.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    func getNonAlcoCocktail(completed: @escaping ([Drink]?,AlcoError?)->Void) {
        let url = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Non_Alcoholic"
        
        guard let url = URL(string: url) else {
            completed(nil,.invalidURL)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, .unableToComplete)
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let cocktailResponse = try decoder.decode(CocktailResponse.self, from: data)
                    completed(cocktailResponse.drinks, nil)
            } catch {
                completed(nil, .invalidData)
                return
            }
        }
        
        task.resume()
    }
    
    func getAlcoCocktail(completed: @escaping ([Drink]?,AlcoError?)->Void) {
        let url = "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic"
        
        guard let url = URL(string: url) else {
            completed(nil, .invalidURL)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, .unableToComplete)
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let cocktailResponse = try decoder.decode(CocktailResponse.self, from: data)
                    completed(cocktailResponse.drinks, nil)
            } catch {
                completed(nil, .invalidData)
                return
            }
        }
        
        task.resume()
    }
    
    func getCocktail(for ids: String, completed: @escaping ([[String : String?]]?,AlcoError?)->Void) {
        let url = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=\(ids)"
        
        guard let url = URL(string: url) else {
            completed(nil, .invalidURL)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, .unableToComplete)
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, .invalidResponse)
                return
            }
            
            guard let data = data else {
                completed(nil, .invalidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let cocktailInfo = try decoder.decode(CocktailInfo.self, from: data)
                completed(cocktailInfo.drinks, nil)
            } catch {
                completed(nil, .invalidData)
                return
            }
        }
        
        task.resume()
    }
    
}
