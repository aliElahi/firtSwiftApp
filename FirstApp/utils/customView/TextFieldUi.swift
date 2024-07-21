//
//  TextFieldUi.swift
//  FirstApp
//
//  Created by Ali Elahi on 7/21/24.
//

import SwiftUI

struct TextFieldUi: View {
        
    @Binding var data : String
    let hint : String
    
//    init(data: String, hint: String) {
//        //self.data = data
//        self.hint = hint
//        self.data = data
//    }
    
    var body: some View {
        ZStack{
            TextField(hint , text: $data)
                .padding()
        }.cornerRadius(16)
            .shadow(color: .black.opacity(0.08), radius: 20, x: 0, y: 6)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.88, green: 0.88, blue: 1), lineWidth: 1)
            )
    }
}

struct TextFieldUi_Previews: PreviewProvider {
    
    @State static var tt : String = ""
    
    static var previews: some View {
        
        TextFieldUi(data: $tt, hint: "please enter your data")
    }
}
