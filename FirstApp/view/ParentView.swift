//
//  ParentView.swift
//  FirstApp
//
//  Created by Ali Elahi on 8/24/24.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        TabView{
            Text("Tab 1")
                .tabItem{
                    Label("one" ,systemImage: "star" )
                }
            
            Text("tab 2")
                .tabItem{
                Label("two" , systemImage: "circle")
            }
            
            Text("tab 3")
                .tabItem{
                Label("three" , systemImage: "star")
            }
            
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
