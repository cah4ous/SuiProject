//
//  DetailInfoScreen.swift
//  Otus01hw
//
//  Created by Александр Троицкий on 03.09.2023.
//

import SwiftUI

struct DetailInfoScreen: View {
    var name: String
    
    var body: some View {
        Text(name)
            .bold()
    }
}

struct DetailInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfoScreen(name: "Dog")
    }
}
