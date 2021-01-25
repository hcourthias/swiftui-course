//
//  MountainDetail.swift
//  MountainPeaks
//
//  Created by Hugo Courthias on 25/01/2021.
//

import SwiftUI

struct MountainDetail: View {
    
    let mountain: Mountain
    @State private var isZoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(mountain.imageURL)
                .resizable()
                .aspectRatio(contentMode: isZoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.isZoomed.toggle()
                    }
                }
            Text(mountain.name)
            Text("\(Int(mountain.altitude))m")
            
        }.navigationBarTitle(Text(mountain.name), displayMode: .inline)
    }
}

struct MountainDetail_Previews: PreviewProvider {
    static var previews: some View {
        MountainDetail(mountain: Mountain(name: "Mont Blanc", imageURL: "mont_blanc", altitude: 5800))
    }
}
