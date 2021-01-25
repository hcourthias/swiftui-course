//
//  ContentView.swift
//  WeatherApp
//
//  Created by Hugo Courthias on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherViewModel: WeatherViewModel
    
    init() {
        self.weatherViewModel = WeatherViewModel()
    }
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Enter city name", text: $weatherViewModel.cityName, onCommit:  {
                weatherViewModel.search()
            }).padding()
            
            Text(self.weatherViewModel.temperature)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
