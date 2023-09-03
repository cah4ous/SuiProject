//
//  ContentView.swift
//  SuiProject
//
//  Created by Александр Троицкий on 03.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ProfileScreen()
                .tag(0)
                .tabItem {
                    Text("Profile")
                }
            NewsScreen(secretFeature: 0.0)
                .tag(1)
                .tabItem {
                    Text("News")
                }
            SettingsScreen()
                .tag(2)
                .tabItem {
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
