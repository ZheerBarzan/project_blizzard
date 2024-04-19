//
//  WeatherView.swift
//  project_blizzard
//
//  Created by zheer barzan on 9/4/24.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    var body: some View {
        
        ZStack(alignment: .leading){
            VStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(weather.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("today,\(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .font(.title2)
                        .foregroundColor(.white)
                }.frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                
                VStack{
                    HStack{
                        VStack(spacing: 10){
                            Image(systemName: "sun.max").font(.system(size: 40))
                            Text(weather.weather[0].main)
                                .font(.title)
                                .fontWeight(.light)
                                .foregroundColor(.white)
                            
                        }.frame(width: 150, alignment: .leading)
                        
                        
                        Text(weather.main.feelsLike.formatted()+"°")
                            .font(.system(size: 60))
                            .fontWeight(.bold)
                            .foregroundColor(.white).padding()
                    }
                    Spacer().frame(height: 80)
                    
                    AsyncImage(url: URL(string: "https://pngimg.com/uploads/city/city_PNG38.png")) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(width: 300)
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Spacer()
                    
                    
                }.frame(maxWidth: .infinity)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding()
            
            
            VStack{
                Spacer()
                VStack(alignment: .leading, spacing: 20){
                    
                    Text("Weather now").bold().padding(.bottom, 20)
                    HStack{
                        WeatherRow(logo: "thermometer.low", name: "min temp", value: weather.main.tempMin.formatted()+"°")
                        Spacer()
                        WeatherRow(logo: "thermometer.high", name: "max temp", value: weather.main.tempMax.formatted()+"°")
                    
                    }
                    HStack{
                        WeatherRow(logo: "wind", name: "wind speed ", value: weather.wind.speed.formatted()+"m/s")
                        Spacer()
                        WeatherRow(logo: "humidity", name: "humidity", value: weather.main.humidity.formatted()+"%")
                    
                    }
                    
                    
                }.frame(maxWidth: .infinity, alignment: .leading).padding().padding(.bottom,20).foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354)).background(.white).cornerRadius( 20, corners: [.topLeft,.topRight])
            }
            
        }.edgesIgnoringSafeArea(.bottom).background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}
