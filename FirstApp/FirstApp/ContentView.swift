//
//  ContentView.swift
//  FirstApp
//
//  Created by Ali Elahi on 7/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var splashAnimationIsDone : Bool = false
    @State private var navigationPath = NavigationPath()

    
    
    
    var body: some View {
        NavigationStack(path : $navigationPath) {
            SplashView(navigationPath: $navigationPath, isAnimationDone: $splashAnimationIsDone)
                .navigationDestination(for: String.self) { i in
                    switch(i){
                    case ShowenView.sendOtpView.rawValue :
                        SendOtpView(navigationPath: $navigationPath, buttonEnable: false)
                    case ShowenView.validateOtpView.rawValue :
                        Text("hello")
                    default:
                        fatalError("not found navigation direction")
                    }
                    
                }
            
//            if(splashAnimationIsDone){
//
//
//                Button("ss"){
//                    navigationPath.append("send otp")
//                }
//            }
            
            
            //        .navigationDestination(for: String.self){ selection in
            //            SendOtpView()
            //        }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
