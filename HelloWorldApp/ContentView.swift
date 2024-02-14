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
            Button("Press now") {
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
            
            NavigationView {
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
            }
//            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })

        }
        
        .padding()
        .preferredColorScheme(mode)
        .buttonStyle(.bordered)
    
    }
       
}

#Preview {
    ContentView()
}
