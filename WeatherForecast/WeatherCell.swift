//
//  WeatherCell.swift
//  WeatherForecast
//
//  Created by Macbook on 09/11/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit


class WeatherCell: UITableViewCell {


     @IBOutlet weak var weatherIcon: UIImageView!
     @IBOutlet weak var dayLabel: UILabel!
     @IBOutlet weak var weatherLabel: UILabel!
     @IBOutlet weak var highTemp: UILabel!
     @IBOutlet weak var lowTemp: UILabel!
     
     func configueCell(forecast: Forecast) {
          lowTemp.text = "\(forecast.lowTemp)"
          highTemp.text = "\(forecast.highTemp)"
          weatherLabel.text = forecast.weatherType
          weatherIcon.image = UIImage(named: forecast.weatherType)
          dayLabel.text = forecast.date
          
     }
     
     
     
}
