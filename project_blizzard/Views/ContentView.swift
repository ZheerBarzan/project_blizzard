//
//  ContentView.swift
//  project_blizzard
//
//  Created by zheer barzan on 27/3/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManeger = LocationManeger()
    var weatherManeger = WeatherManeger()
    @State var weather: ResponseBody?
    var body: some View {
        VStack {
            
            if let location = locationManeger.location{
                if let weather = weather{
                    WeatherView(weather: weather)
                }else{
                    LoadingView().task {
                        do{
                            let response = try await weatherManeger.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                            weather = response
                        }catch{
                            print("error getting weather",error.localizedDescription)
                        }
                    }
                }
            }else{
                if locationManeger.isLoading{
                    LoadingView()
                }else{
                    WelcomeView().environmentObject(locationManeger)

                }
            }
            
            
        }.background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
