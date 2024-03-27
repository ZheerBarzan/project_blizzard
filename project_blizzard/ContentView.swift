//
//  ContentView.swift
//  project_blizzard
//
//  Created by zheer barzan on 27/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("hello my love")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
