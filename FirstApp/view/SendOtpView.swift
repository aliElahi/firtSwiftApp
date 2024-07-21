//
//  SendOtpView.swift
//  FirstApp
//
//  Created by Ali Elahi on 7/18/24.
//

import SwiftUI

struct SendOtpView: View {
    
    @State var nationalCode = ""
    @FocusState private var nationalCodeFocused : Bool
    
    init(){
        nationalCodeFocused = false
    }
    
    private var imageSize = 17
    
    
    var body: some View {
        VStack {
            
            
            
            Spacer()
            
            Image("logo")
            
            TextFieldUi(data: $nationalCode, hint: "Enter your national code")
                .padding()
                
            
            Spacer()
            Spacer()
            Spacer()
            
            Button("send"){
                print(nationalCode)
            }
            
        }
        
    }
}

//struct SendOtpView_Previews: PreviewProvider {
//    static var previews: some View {
//        SendOtpView()
//    }
//}
