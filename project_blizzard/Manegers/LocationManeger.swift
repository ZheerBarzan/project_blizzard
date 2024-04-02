//
//  LocationManeger.swift
//  project_blizzard
//
//  Created by zheer barzan on 2/4/24.
//

import Foundation
import CoreLocation



class LocationManeger: NSObject, ObservableObject, CLLocationManagerDelegate{
    
    let maneger = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    
    override init() {
        super.init()
        maneger.delegate = self
        
    }
    
    func requestLocation(){
        isLoading = true
        maneger.requestLocation()
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        isLoading = false
        print("error getting location",error.localizedDescription)
    }
}
