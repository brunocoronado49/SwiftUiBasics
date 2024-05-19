//
//  MainView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 15/05/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView()
                    .frame(height: 400)
                ListView()
                    .frame(height: 400)
                ImageView()
                    .padding()
                ContentView()
            }
        }
    }
}

#Preview {
    MainView()
}
