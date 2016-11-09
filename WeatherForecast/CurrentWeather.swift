//
//  CurrentWeather.swift
//  WeatherForecast
//
//  Created by Macbook on 03/11/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
     
     // Data encapsulation
     
     var _cityName: String!
     var _date: String!
     var _weatherType: String!
     var _currentTemp: Double!
     
     var cityName: String {
     // this ensure code is safe
           if _cityName == nil {
               _cityName = ""
          }
          return _cityName
     }
          var date: String {
     // this ensure code is safe
          if _date == nil {
               _date = ""
          }
          
          let dateFormatter = DateFormatter()
          dateFormatter.dateStyle = .medium
          dateFormatter.timeStyle = .none
          let currentDate = dateFormatter.string(from: Date())
          self._date = "Today, \(currentDate)"
          
          return _date
     }
     
     var weatherType: String {
          // this ensure code is safe
          if _weatherType == nil {
               _weatherType = ""
          }
          return _weatherType
     }
     
     var currentTemp: Double {
          // this ensure code is safe
          if _currentTemp == nil {
               _currentTemp = 0.0
          }
          return _currentTemp
     }
     
     func downloadWeatherDetails(completed: @escaping DownloadComplete) {
          // Alamofire 4.0  download current Weather Data
          // Note: Code has changed in Pod file and request
          
          Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response in
               let result = response.result
               
               if let dict = result.value as? Dictionary<String, AnyObject> {
                    
                    if let name = dict["name"] as? String {
                         
                         self._cityName = name.capitalized
                         print(self._cityName)
                    }
                    
                    if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                         
                         if let main = weather[0]["main"] as? String {
                              self._weatherType = main.capitalized
                              print(self._weatherType)
                         }
                    }
                    if let main = dict["main"] as? Dictionary<String, AnyObject> {
                         
                         if let currentTemperature = main["temp"] as? Double {
                              
                              let kelvinToFarenheitPreDivision = (currentTemperature * (9/5) - 459.67)
                              
                              let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision / 10))
                              
                              self._currentTemp = kelvinToFarenheit
                              print(self._currentTemp)
                              }
                         }
                         
                         
                    }
                    
                    completed()
               
               }

          }
       
     }



