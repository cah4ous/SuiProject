//
//  UIViewRepresentableBootcamp.swift
//  Otus01hw
//
//  Created by Александр Троицкий on 03.09.2023.
//

import SwiftUI

struct UIViewRepresentableBootcamp: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            Text(text)
            TextField("Type hear", text: $text)
            UITextFieldViewRepresentable(text: $text)
                .frame(height: 55)
                .background(Color.gray)
            BasicUIViewRepresentable()
        }
    }
}

struct UIViewRepresentableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        UIViewRepresentableBootcamp()
    }
}

struct UITextFieldViewRepresentable: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: Context) -> some UITextField {
        let textField = getTextField()
        textField.delegate = context.coordinator
        return textField
    }
    
    // from SUI to UIKit
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.text = text
    }
    
    
    
    private func getTextField() -> UITextField {
        let textField = UITextField()
        let placeHolder = NSAttributedString(string: "Type here...", attributes: [.foregroundColor: UIColor.red])
        textField.attributedPlaceholder = placeHolder

        return textField
    }
    
    // from UIKit to SUI
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        
        @Binding var text: String
        
        init(text: Binding<String>) {
            self._text = text
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }
}

struct BasicUIViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
