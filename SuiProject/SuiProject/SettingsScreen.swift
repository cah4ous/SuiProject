//
//  SettingsScreen.swift
//  Otus01hw
//
//  Created by Александр Троицкий on 03.09.2023.
//

import SwiftUI

struct SettingsScreen: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Открыть настройки") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            MessageDetailsView()
        }

    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
