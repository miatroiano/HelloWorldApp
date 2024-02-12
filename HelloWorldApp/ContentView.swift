//
//  ContentView.swift
//  HelloWorldApp
//
//  Created by Mia Troiano on 2/11/24.
//

import SwiftUI
import UIKit

struct ContentView: View {

    @State private var mode: ColorScheme = .light
    func toggleMode() {
            if mode == .light {
                mode = .dark
            } else {
                mode = .light
            }
        }
    var body: some View {
        VStack {
            Button("Press Me") {
                self.toggleMode()
            }
            .accentColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
            .bold()

            if(mode == .dark){
                Image("moon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            
            else{
                Image("sun")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            
        }
        
        .padding()
        .preferredColorScheme(mode)
        .buttonStyle(.bordered)
    
    }
       
}

#Preview {
    ContentView()
}
