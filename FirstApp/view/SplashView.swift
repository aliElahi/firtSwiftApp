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

    
    var body: some View {
        
        VStack(){
            Spacer()
            if(showLogo){
                Image("logo")
                    .background(.lightGray)
                    
            }
            Spacer()
            Spacer()
//            Button("test"){
//                showViews()
//            }
        }
        .onAppear{
            showViews()
        }
        
    }
    
    private func showViews(){
        withAnimation(.linear(duration: animationTime)) {
            showLogo.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + animationTime + 0.5){
            
            print("Done1")
        }
    }
    
}

//struct SplashView_Previews: PreviewProvider {
//    static var previews: some View {
//        SplashView()
//    }
//}
