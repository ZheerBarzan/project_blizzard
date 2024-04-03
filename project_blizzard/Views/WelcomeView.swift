//
//  WelcomeView.swift
//  project_blizzard
//
//  Created by zheer barzan on 2/4/24.
//

import SwiftUI
import CoreLocationUI
struct WelcomeView: View {
    @EnvironmentObject var locationManeger: LocationManeger
    var body: some View {
        VStack{
            VStack(spacing: 20 ){
                Text("Welcome to Blizzard")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
            }.multilineTextAlignment(.center).padding()
            
            LocationButton(.shareCurrentLocation){
                locationManeger.requestLocation()
            }.cornerRadius( 20)
                .symbolVariant(.fill)
                .foregroundColor(.white)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
