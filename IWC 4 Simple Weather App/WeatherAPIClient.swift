//
//  WeatherAPIClient.swift
//  IWC 4 Simple Weather App
//
//  Created by Arifin Firdaus on 8/21/17.
//  Copyright © 2017 Arifin Firdaus. All rights reserved.
//

import Foundation
import Moya
import Moya_ObjectMapper

struct WeatherAPIClient {
    
    private let provider = MoyaProvider<WeatherAPI>()
    
    
    func getStaticWeatherData(_ completion: @escaping (WeatherResponse?) -> (Void)) {
        
        provider.request(WeatherAPI.getStaticWeatherData) { (result) in
            switch result {
            case .success(let response):
                do {
                    try completion(response.mapObject(WeatherResponse.self))
                } catch {
                    completion(nil)
                }
                break
            case .failure( _):
                completion(nil)
                break
            }
        }
    }
    
}
