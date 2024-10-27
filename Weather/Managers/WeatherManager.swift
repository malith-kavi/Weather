//
//  WeatherManager.swift
//  Weather
//
//  Created by Malith Kavinda on 2024-10-27.
//

import Foundation
import CoreLocation

class WeatherManager {
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        guard let url = URL(string: "api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\("96c14743804a2d5a89d805209bdf6a5d")&units=metric") else { fatalError("Missing URL")}
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data") }
        
    }
}
