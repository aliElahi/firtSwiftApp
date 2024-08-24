//
//  ButtonUi.swift
//  FirstApp
//
//  Created by Ali Elahi on 7/27/24.
//

import SwiftUI

struct ButtonUi: View {
    
    @Binding var enabale : Bool
    let text : String
    let action : () -> Void
    
    private let enabaledColor = Color.primaryColor
    private let disabledColor = Color.gray
    
    var body: some View {
        
        Button{
            action()
        }label: {
            Text(text)
                .frame(maxWidth: .infinity)
        }.frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(enabale ? enabaledColor : disabledColor)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
    }
}



//struct ButtonUi_Previews: PreviewProvider {
//
//    @State static var enabeld : Bool = true
//
//    static var previews: some View {
//        ButtonUi(enabale: false, text: "text")
//    }
//}

