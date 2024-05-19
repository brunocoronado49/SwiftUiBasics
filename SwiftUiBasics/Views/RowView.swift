//
//  RowView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 15/05/24.
//

import SwiftUI

struct RowView: View {
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(10)
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            Spacer()
            
            if programmer.favorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding()
            }
        }
    }
}

#Preview {
    RowView(programmer: Programmer(
        id: 10,
        name: "Bruce",
        languages: "Swift, Kotlin, Dart, C#",
        avatar: Image("Yor_briar"),
        favorite: true
    ))
}
