//
//  ValidateOtpView.swift
//  FirstApp
//
//  Created by Ali Elahi on 7/25/24.
//

import SwiftUI

struct ValidateOtpView: View {
    
    let userPhoneNumber : String
    @State var otpCode : String
    @State var buttonEnable : Bool
    
    var body: some View {
        
        VStack{
            Spacer()
            Image("otpLogo")
                
            Text("کد تایید")
                .padding()
                .font(.headline)

            Text("کد تایید برای شماره  \(userPhoneNumber) ‍‍‍‍‍‍‍پیامک شد")
                .font(.subheadline)
            
            TextFieldUi(data: $otpCode.onUpdate {
                
                if(otpCode.count > 6){
                    otpCode = String(otpCode.prefix(6))
                    buttonEnable = true
                }
                else{
                    buttonEnable = false
                }
                
            }, hint: "کد")
                .padding()
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        
            ButtonUi(enabale: $buttonEnable, text: "تایید"){
                print("button clicked")
            }
                .padding()
            //ButtonUi(enabale: $buttonEnable, text: "تایید" )
        }
        
    }
}

//struct ValidateOtpView_Previews: PreviewProvider {
//
//
//    @State var str : String = ""
//    static var previews: some View {
//
//
//        ValidateOtpView(userPhoneNumber: "09399486981", otpCode: "", buttonEnable: true)
//    }
//}
