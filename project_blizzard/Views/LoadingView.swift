//
//  LoadingView.swift
//  project_blizzard
//
//  Created by zheer barzan on 6/4/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .white)).frame(maxWidth: .infinity, maxHeight: .infinity)
                
        }
    }
}

#Preview {
    LoadingView()
}
