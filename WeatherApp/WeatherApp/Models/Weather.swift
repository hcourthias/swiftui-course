//
//  Weather.swift
//  WeatherApp
//
//  Created by Hugo Courthias on 26/01/2021.
//

import Foundation


struct WeatherResponse: Decodable {
    let main: Weather
}


struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}
