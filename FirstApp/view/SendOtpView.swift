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
                    
            TextField("Enter your national code" , text: $nationalCode)
                .textFieldStyle(.roundedBorder)
                .padding()
                
                
            Spacer()
            Spacer()
            Spacer()
            
        }
            
    }
}

struct SendOtpView_Previews: PreviewProvider {
    static var previews: some View {
        SendOtpView()
    }
}
