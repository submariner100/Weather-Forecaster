//
//  Location.swift
//  WeatherForecast
//
//  Created by Macbook on 09/11/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//


import CoreLocation

// Singleton Class

class Location {
     
     static var sharedInstance = Location()
     private init() {}
     var latitude: Double!
     var longitude: Double!
     
     
}
