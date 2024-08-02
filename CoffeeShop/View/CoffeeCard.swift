//
//  CoffeCard.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 29/01/25.
//

import SwiftUI

struct CoffeeCard: View {
    let coffee: CoffeeModel
    var coffeeImageName: String {
        switch coffee.coffeeName {
            case "Flat White": "Coffee-FlatWhite"
            case "Latte": "Coffee-Heart"
            case "Caffe Mocha": "Coffee-Mocha"
            case "Express": "Coffee-Flower"
            default: "default_coffee_image"
        }
    }
    
    var body: some View {
        VStack {
            VStack (alignment: .leading, spacing: 6) {
                ZStack (alignment: .topTrailing) {
                    Image(coffeeImageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .clipShape(.rect(cornerRadius: 24))
                    
                    HStack (spacing: 4) {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        
                        Text("\(coffee.rating, specifier: "%.1f")")
                            .font(.custom("Sora-SemiBold", size: 16))
                            .foregroundStyle(.white)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                }
                
                Text("\(coffee.coffeeName)")
                    .font(.custom("Sora-Bold", size: 18))
                
                Text("\(coffee.coffeeType)")
                    .font(.custom("Sora-Regular", size: 14))
                    .foregroundStyle(.gray)
                
                HStack {
                    Text("$ \(coffee.price, specifier:"%.2f")")
                        .font(.custom("Sora-Bold", size: 22))
                    
                    Spacer()
                    NavigationLink(destination: CoffeeDetail(coffee: coffee)) {
                        Image(systemName: "plus")
                            .foregroundStyle(.white)
                            .padding(12)
                    }
                    .background(.color1)
                    .clipShape(.rect(cornerRadius: 8))
                }
            }
            .frame(maxWidth: 150)
            .padding()
        }
        .background(.white)
        .clipShape(.rect(cornerRadius: 24))
    }
}

#Preview {
    CoffeeCard(coffee: CoffeeModel(coffeeName: "Express", coffeeType: "Espresso", rating: 4.5, price: 3.99))
}
