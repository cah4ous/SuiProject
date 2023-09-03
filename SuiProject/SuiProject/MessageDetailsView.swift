//
//  MessageDetailsView.swift
//  Otus01hw
//
//  Created by Александр Троицкий on 03.09.2023.
//

import SwiftUI

struct MessageDetailsView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Скрыть модальное окно") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}

struct MessageDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MessageDetailsView()
    }
}
