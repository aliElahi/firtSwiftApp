//
//  SendOtpView.swift
//  FirstApp
//
//  Created by Ali Elahi on 7/18/24.
//

import SwiftUI

struct SendOtpView: View {
    
    @Binding var navigationPath : NavigationPath
    
    @State var nationalCode: String  = ""
    
    @State var buttonEnable : Bool
    
    var imageSize = 17
    
    
    var body: some View {
        VStack {
            Spacer()
            Image("logo")
            
            TextFieldUi(data: $nationalCode.onUpdate {
                
                if(nationalCode.count >= 10)
                    {
                    nationalCode = String(nationalCode.prefix(10))
                        buttonEnable = true
                    }
                else{
                    buttonEnable = false
                }
            }, hint: "Enter your national code")
                .padding()
            
            Spacer()
            Spacer()
            Spacer()
            
            NavigationLink{
                ValidateOtpView(userPhoneNumber: nationalCode, otpCode: "", buttonEnable: false)
            }label: {
                ButtonUi(enabale: $buttonEnable, text: "send"){
                    
                }.allowsHitTesting(false)
                    .padding()
            }
            .disabled(!buttonEnable)
        }
        
    }
}

//struct SendOtpView_Previews: PreviewProvider {
//    static var previews: some View {
//        SendOtpView()
//    }
//}


extension Binding {
    
    /// When the `Binding`'s `wrappedValue` changes, the given closure is executed.
    /// - Parameter closure: Chunk of code to execute whenever the value changes.
    /// - Returns: New `Binding`.
    func onUpdate(_ closure: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: {wrappedValue},
            set: { newValue in
            wrappedValue = newValue
            closure()
        })
    }
}
