//
//  EnvironmentView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 18/05/24.
//

import SwiftUI

struct EnvironmentView: View {
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

#Preview {
    EnvironmentView()
        .environmentObject(UserData())
}
