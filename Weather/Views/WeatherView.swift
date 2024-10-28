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
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .bold().font(.title)
                    
                    Text("Today,\(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            Image(systemName: <#T##String#>)
                        }
                        .frame(width:150, alignment: .leading)
                        
                        Text(weather.main.feelsLike.roundDouble() + "°")
                            .font(.system(size:100))
                            .fontWeight(.bold)
                            .padding()
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
            .padding()
            .frame(maxWidth: .infinity,alignment: .leading)
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
