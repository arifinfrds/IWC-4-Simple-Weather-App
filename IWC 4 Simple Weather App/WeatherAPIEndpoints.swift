//
//  WeatherAPIEndpoints.swift
//  IWC 4 Simple Weather App
//
//  Created by Arifin Firdaus on 8/21/17.
//  Copyright © 2017 Arifin Firdaus. All rights reserved.
//


// MARK : - for more, visit https://github.com/Moya/Moya/blob/master/docs/Examples/Basic.md

import Foundation
import Moya

enum WeatherAPI {
    
    case getStaticWeatherData
    
}


// MARK: - TargetType Protocol Implementation
extension WeatherAPI: TargetType {
    
    var baseURL: URL {
        return URL(string: "https://api.openweathermap.org/data/2.5")!
    }
    
    var path: String {
        switch self {
        case .getStaticWeatherData:
            return "/weather"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getStaticWeatherData:
            return .get
        }
    }
    
    var parameters: [String : Any]? {
        switch self {
        case .getStaticWeatherData:
            return [
                "q" : "Malang, id",
                "units" : "metric",
                "appid" : "3805dd8eda02a9e61920a575cd81b269"
            ]
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
        case .getStaticWeatherData:
            return URLEncoding.default
        }
    }
    
    var sampleData: Data {
        return "{}".data(using: .utf8)!
    }
    
    var task: Task {
        return .request
    }
    
    
    
    
}
