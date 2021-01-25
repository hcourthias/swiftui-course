//
//  ContentView.swift
//  Shared
//
//  Created by Hugo Courthias on 25/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(250)
                .padding()
            
            Text("hcourthias")
                .font(.largeTitle)
            
            HStack {
                Text("IOS Developer @ Apptstud")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
