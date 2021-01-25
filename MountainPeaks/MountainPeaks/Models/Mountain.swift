//
//  Mountain.swift
//  MountainPeaks
//
//  Created by Hugo Courthias on 25/01/2021.
//

import Foundation

struct Mountain {
    let name: String
    let imageURL: String
    let altitude: Double
}

extension Mountain {
    static func all() -> [Mountain] {
        return [
            Mountain(name: "Mont blanc", imageURL: "mont_blanc", altitude: 4696),
            Mountain(name: "Everest", imageURL: "everest", altitude: 8849),
            Mountain(name: "Kilimandjaro", imageURL: "kili", altitude: 5885)

        ]
    }
}
