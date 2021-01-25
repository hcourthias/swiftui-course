//
//  ContentView.swift
//  MountainPeaks
//
//  Created by Hugo Courthias on 25/01/2021.
//
import SwiftUI

struct ContentView: View {
    
    let mountains = Mountain.all()
    
    var body: some View {
        
        NavigationView {
            List(mountains, id: \.name) { mountain in
                NavigationLink(
                    destination: MountainDetail(mountain: mountain)) {
                    MountainCell(mountain: mountain)
                }
            }
            .navigationBarTitle("Mountains")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MountainCell: View {
    
    let mountain: Mountain
    
    var body: some View {
        HStack {
            Image(mountain.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                
                Text(mountain.name)
                Text("\(Int(mountain.altitude))m")
            }
        }
    }
}
