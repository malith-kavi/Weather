//
//  WeatherView.swift
//  Weather
//
//  Created by Malith Kavinda on 2024-10-28.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WeatherView_previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
