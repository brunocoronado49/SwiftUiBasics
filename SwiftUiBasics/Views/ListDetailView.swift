//
//  ListDetailView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 15/05/24.
//

import SwiftUI

struct ListDetailView: View {
    var programmer: Programmer
    @Binding var favorite: Bool
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 8)
            HStack {
                Text(programmer.name)
                    .font(.largeTitle)
                
                Button(action: {
                    favorite.toggle()
                }, label: {
                    if favorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundColor(.black)
                    }
                })
            }
            Text(programmer.languages)
                .font(.title)
            Spacer()
        }
    }
}

#Preview {
    ListDetailView(programmer: Programmer(
        id: 10,
        name: "Bruce",
        languages: "Swift, Kotlin, Dart, C#",
        avatar: Image("Yor_briar"),
        favorite: false
    ), favorite: .constant(false))
}
