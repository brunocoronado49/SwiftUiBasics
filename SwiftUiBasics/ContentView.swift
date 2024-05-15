//
//  ContentView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 14/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 20
        ) {
            Text("Bienvenido al curso de SwiftUI!")
                .font(.largeTitle)
                .foregroundStyle(Color.blue)
                .padding()
                .background(Color.yellow)
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                           maxHeight: .infinity)
                    .background(Color.green)
                    .padding()
                Text("")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                           maxHeight: .infinity)
                    .background(Color.gray)
                    .padding(40)
                Text("")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                           maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(60)
                Text("")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                           maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(60)
            }
            
            HStack {
                Text("Hola hackerman")
                    .padding()
                    .background(Color.yellow)
                
                Spacer()
                
                Text("Bienvenidos a Mouredev")
                    .padding()
                    .background(Color.yellow)
            }
        }
        .background(Color.red)
    }
}

#Preview {
    ContentView()
}
