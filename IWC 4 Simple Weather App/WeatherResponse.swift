//
//  WeatherResponse.swift
//  IWC 4 Simple Weather App
//
//  Created by Arifin Firdaus on 8/21/17.
//  Copyright © 2017 Arifin Firdaus. All rights reserved.
//

import Foundation
import ObjectMapper

struct WeatherResponse: Mappable {
    
    
    // MARK: - Initializer and Properties
    
    var name: String!
    var temp: Double!
    var description: String!
    var icon: String!
    
    
    // MARK: - JSON
    
    init?(map: Map) {
        
        
    }
    
    mutating func mapping(map: Map) {
        self.name <- map["name"]
        self.temp <- map["main.temp"]
        self.description <- map["weather.0.main"]
        self.icon <- map["weather.0.icon"]
    }
    
}
