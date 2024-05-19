//
//  StateView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 18/05/24.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var name = "Francisco"
    @Published var age = 26
}

struct StateView: View {
    
    // Una variable de tipo @State se usa cuando la variable
    // va a cambiar su valor, y cuando es de tipo state la vista
    // que se encarga de definirlo
    @State private var counter: Int = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("El valor actual es \(counter)")
                
                Button(action: {
                    counter += 1
                }, label: {
                    Text("Suma 1")
                })
                
                Text("Mi nombre es \(user.name) y mi edad \(user.age)")
                
                Button(action: {
                    user.name = "Bruce"
                    user.age = 27
                }, label: {
                    Text("Actualizar datos")
                })
                
                NavigationLink {
                    BindingView(counter: $counter, user: user)
                } label: {
                    Label("BindingView", systemImage: "person")
                }
                
            }.navigationTitle("StateView")
        }
    }
}

#Preview {
    StateView().environmentObject(UserData())
}
