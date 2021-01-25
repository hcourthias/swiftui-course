//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Hugo Courthias on 26/01/2021.
//

import Foundation

class WeatherViewModel: ObservableObject {
    private var weatherService: WeatherService!
    @Published var weather = Weather()
    var temperature: String {
        if let temp = self.weather.temp {
            return String(format: "%.0f", temp)
        } else {
            return ""
        }
    }
    var humidity: String {
        if let humidity = self.weather.humidity {
            return String(format: "%.0f", humidity)
        } else {
            return ""
        }
    }
    var cityName: String = ""
    
    init() {
        self.weatherService = WeatherService()
    }
    
    func search() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlUserAllowed) {
            fetchWeather(by: city)
        }
    }
    
    private func fetchWeather(by city: String) {
        self.weatherService.getWeather(city: city) { weather in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
            }
        }
    }
}
