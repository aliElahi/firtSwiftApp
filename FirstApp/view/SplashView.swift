//
//  SplashView.swift
//  FirstApp
//
//  Created by Ali Elahi on 7/14/24.
//

import SwiftUI

struct SplashView: View {
    
    let animationTime : Double = 1
    
    @State var showLogo = false
    @Binding var navigationPath : NavigationPath
    @Binding var isAnimationDone : Bool
    
    var body: some View {
        
        VStack(){
            Spacer()
            if(showLogo){
                Image("logo")
            }
            Spacer()
            Spacer()
        }
        .onAppear{
            showViews()
        }
        
    }
    
    private func showViews(){
        withAnimation(.linear(duration: animationTime)) {
            showLogo.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + animationTime + 1){
            //isAnimationDone = true
            navigationPath.append(ShowenView.sendOtpView.rawValue)
        }
    }
    
}

//struct SplashView_Previews: PreviewProvider {
//    
//    @State static var bool : Bool = true
//
//    static var previews: some View {
//        SplashView(isAnimationDone: $bool)
//    }
//}
