//
//  ViewController.swift
//  IWC 4 Simple Weather App
//
//  Created by Arifin Firdaus on 8/21/17.
//  Copyright © 2017 Arifin Firdaus. All rights reserved.
//

import UIKit
import SDWebImage


class ViewController: UIViewController {
    
    
    // MARK: - Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    
    // MARK: - view life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fetchData()
        
    }
    
    private func fetchData() {
        let client = WeatherAPIClient()
        client.getStaticWeatherData { (response) -> (Void) in
            if let r = response {
                print(r)
                self.nameLabel.text = r.name
                self.tempLabel.text = "\(r.temp!.rounded()) C"
                self.descriptionLabel.text = r.description
                let iconUrl = URL(string: "https://openweathermap.org/img/w/\(r.icon!).png")
                self.iconImageView.sd_setImage(with: iconUrl)
            }
        }
    }
    
    
}

