//
//  Services.swift
//  WeatherApp
//
//  Created by Hugo Courthias on 26/01/2021.
//

import Foundation

let API_KEY = "YOUR_API_KEY"

class WeatherService {
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(API_KEY)&units=metric") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let weather = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weather = weather {
                completion(weather.main)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
