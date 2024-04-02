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
            WelcomeView().environmentObject(locationManeger)
        }.background(.blue)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
