//
//  BindingView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 18/05/24.
//

import SwiftUI

struct BindingView: View {
    @Binding var counter: Int
    @ObservedObject var user: UserData
    
    var body: some View {
        VStack {
            Button(action: {
                counter += 2
            }, label: {
                Text("Suma 2")
            })
            
            Button(action: {
                user.name = "Lupita"
                user.age = 28
            }, label: {
                Text("Actualizar datos")
            })
            
            NavigationLink {
                EnvironmentView()
            } label: {
                Label("EnvironmentObject", systemImage: "person")
            }
        }
    }
}

#Preview {
    BindingView(counter: .constant(5), user: UserData())
}
