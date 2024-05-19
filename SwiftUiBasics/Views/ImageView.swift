//
//  ImageView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 15/05/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("Yor_briar")
                .resizable()
                .padding(50)
                .frame(width: 300,
                       height: 300)
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.red, lineWidth: 4))
                .shadow(color: .red, radius: 15)
            
            Spacer()
            
            Image(systemName: "pencil.circle")
                .resizable()
                .foregroundColor(.blue)
                .padding(50)
                .frame(width: 300,
                       height: 300)
                .background(Color.white)
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.blue, lineWidth: 4))
                .shadow(color: .blue, radius: 15)
        }
    }
}

#Preview {
    ImageView()
}
