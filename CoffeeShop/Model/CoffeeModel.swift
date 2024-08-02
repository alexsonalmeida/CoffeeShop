//
//  CoffeeModel.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 30/01/25.
//

import Foundation

struct CoffeeModel: Identifiable {
    let id = UUID()
    let coffeeName: String
    let coffeeType: String
    let rating: Double
    let price: Double
}
