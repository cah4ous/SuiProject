//
//  NewsScreen.swift
//  Otus01hw
//
//  Created by Александр Троицкий on 03.09.2023.
//

import SwiftUI

struct Animal: Identifiable {
    var id = UUID()
    var name : String
}

struct NewsScreen: View {
    @State var secretFeature: Double
    
    let animals = [
        Animal(name: "Dog"),
        Animal(name: "Cat"),
        Animal(name: "Parrot")
    ]
    
    var body: some View {
        VStack {
            NavigationView {
                List(animals) { animal in
                    NavigationLink(destination: DetailInfoScreen(name: animal.name)) {
                        Text(animal.name)
                    }
                }
            }
            Text("Secret Feature")
                .opacity(secretFeature)
        }
    }
}

struct NewsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewsScreen(secretFeature: 0.0)
    }
}
