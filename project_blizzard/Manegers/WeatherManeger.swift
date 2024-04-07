//
//  WeatherManeger.swift
//  project_blizzard
//
//  Created by zheer barzan on 7/4/24.
//

import Foundation
import CoreLocation

class WeatherManeger{
    
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws{
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\("32accf81cdf0a4a5e91727a4dd7e80f1")&units=metric") else { fatalError("URL is missing")}
        
        let urlRequest = URLRequest(url: url)
        
        let (data,response) = try await URLSession.shared.data(for: urlRequest)
        
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Invalid response")}
        
        
    }
    
}
