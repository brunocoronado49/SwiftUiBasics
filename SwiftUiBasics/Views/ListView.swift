//
//  ListView.swift
//  SwiftUiBasics
//
//  Created by Bruno  on 15/05/24.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
    @Published var programmers = [
        Programmer(
            id: 0,
            name: "Bruce",
            languages: "Swift, Kotlin, Dart, C#",
            avatar: Image("Yor_briar"),
            favorite: true
        ),
        Programmer(
            id: 1,
            name: "Lupita",
            languages: "Javascript, Python",
            avatar: Image("Yor_briar"),
            favorite: true
        ),
        Programmer(
            id: 2,
            name: "Jenni",
            languages: "Java, kotlin",
            avatar: Image("Yor_briar"),
            favorite: true
        ),
        Programmer(
            id: 3,
            name: "Yor",
            languages: "C#, C++, Java, Go, Python",
            avatar: Image("Yor_briar"),
            favorite: false
        ),
        Programmer(
            id: 4,
            name: "Maria",
            languages: "HTML, CSS",
            avatar: Image("Yor_briar"),
            favorite: false
        )
    ]
}

struct ListView: View {
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $showFavorites, label: {
                    Text("Show Favorites")
                }).padding()
            
                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)) {
                        RowView(programmer: programmer)
                    }
                }
            }.navigationTitle("Programmers")
        }
    }
}

#Preview {
    ListView().environmentObject(ProgrammersModelData())
}
