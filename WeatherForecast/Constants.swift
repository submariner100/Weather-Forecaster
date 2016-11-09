//
//  Constants.swift
//  WeatherForecast
//
//  Created by Macbook on 03/11/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//
// OPEN WEATHER API_KEY 042a426ba6d176d2c163cc7272b15f67


import Foundation
import Alamofire

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "042a426ba6d176d2c163cc7272b15f67"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)55\(LONGITUDE)-3.0\(APP_ID)\(API_KEY)"

let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=55&lon=-3.0&cnt=10&mode=json&appid=042a426ba6d176d2c163cc7272b15f67"

//http://api.openweathermap.org/data/2.5/forecast/daily?lat=52.62&lon=-1.4&cnt=10&mode=json&appid=042a426ba6d176d2c163cc7272b15f67
