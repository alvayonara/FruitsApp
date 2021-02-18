//
//  FruitModel.swift
//  FruitsApp
//
//  Created by Alva Yonara Puramandya on 18/02/21.
//

import SwiftUI

// MARK: - FRUIT MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
