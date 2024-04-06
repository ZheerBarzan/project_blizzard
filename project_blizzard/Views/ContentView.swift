//
//  ContentView.swift
//  project_blizzard
//
//  Created by zheer barzan on 27/3/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManeger = LocationManeger()
    var body: some View {
        VStack {
            
            if let location = locationManeger.location{
                Text("Your Location is \(location.latitude) \(location.longitude)")
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
