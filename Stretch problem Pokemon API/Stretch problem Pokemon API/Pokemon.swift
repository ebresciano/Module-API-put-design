//
//  Pokemon.swift
//  Stretch problem Pokemon API
//
//  Created by Eva Marie Bresciano on 6/8/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class Pokemon {
    
    var name = "name"
    
    init?(dictionary: [String:AnyObject]) {
        guard let name = dictionary["name"] as? String else {
            return nil
        }
        
         self.name = name
    }
    
    
}
