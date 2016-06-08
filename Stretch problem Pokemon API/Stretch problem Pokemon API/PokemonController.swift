//
//  PokemonController.swift
//  Stretch problem Pokemon API
//
//  Created by Eva Marie Bresciano on 6/8/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation


class PokemonController {
    
    static let baseURL = "http://pokeapi.co/api/v2/pokemon/"
    
    static func getPokemon(name: String, completion: (pokemon: Pokemon?) -> Void) {
      guard let url = baseURL else {
            return
        }
        
        NetworkController.performRequestForURL(url, httpMethod: .Get) { (data, error) in
            guard let data = data,
            jsonDictionary = (try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)) as? [String:AnyObject] else {
            completion(pokemon: nil)
            return
            }
        }
    }
    
}