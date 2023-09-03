//
//  ProfileScreen.swift
//  Otus01hw
//
//  Created by Александр Троицкий on 03.09.2023.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: NewsScreen(secretFeature: 1.0)) {
                Text("Перейти на экран новостей в темной теме")
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
