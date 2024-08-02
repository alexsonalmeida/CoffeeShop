//
//  CoffeeDetail.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 04/02/25.
//

import SwiftUI

struct CoffeeDetail: View {
    @EnvironmentObject var tabBarVisibilityManager: TabBarVisibilityManager
    let coffee: CoffeeModel
    @State private var selectedSize: String = "M"
    @State private var price: Double = 4.53
    let sizeOptions = ["S", "M", "L"]
    let prices: [String: Double] = ["S": 3.99, "M": 4.53, "L": 5.23]
    @Environment(\.presentationMode) var presentationMode
    
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
        ZStack {
            ScrollView{
                VStack (alignment: .leading, spacing: 16) {
                    Image(coffeeImageName)
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 24))
                    
                    HStack {
                        VStack (alignment: .leading, spacing: 2){
                            Text(coffee.coffeeName)
                                .font(.custom("Sora-Semibold", size: 22))
                            
                            Text(coffee.coffeeType)
                                .font(.custom("Sora-Regular", size: 14))
                                .foregroundStyle(.gray)
                            
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                                
                                Text("\(coffee.rating, specifier: "%.2f")")
                                    .font(.custom("Sora-Semibold", size: 18))
                                
                                Text("(230)")
                                    .font(.custom("Sora-Regular", size: 14))
                                    .foregroundStyle(.gray)
                            }
                            .padding(.vertical, 10)
                        }
                        
                        Spacer()
                        
                        HStack (spacing: 12) {
                            Image(systemName: "scooter")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 28, height: 28)
                                .padding(.vertical, 12)
                                .padding(.horizontal, 14)
                                .foregroundStyle(.color1)
                                .background(.brown.opacity(0.1))
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                            Image(systemName: "cup.and.saucer.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 28, height: 28)
                                .padding(.vertical, 12)
                                .padding(.horizontal, 14)
                                .foregroundStyle(.color1)
                                .background(.brown.opacity(0.1))
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                            Image(systemName: "drop.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 28, height: 28)
                                .padding(.vertical, 12)
                                .padding(.horizontal, 14)
                                .foregroundStyle(.color1)
                                .background(.brown.opacity(0.1))
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                    }
                    Divider()
                    
                    VStack (alignment: .leading, spacing: 8) {
                        Text("Description")
                            .font(.custom("Sora-Semibold", size: 18))
                        
                        ExpandableText(text: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the former steamed to froth and the latter steamed to a light, velvety temperature. It is one of the most popular drinks in the world, especially in Italy, where it is called caffè macchiato.")
                    }
                    
                    
                    Text("Size")
                        .font(.custom("Sora-Semibold", size: 18))
                    HStack (spacing: 16) {
                        ForEach(sizeOptions, id: \.self) { size in
                            Button(action: {
                                selectedSize = size
                                price = prices[size] ?? 0.0
                            }) {
                                Text(size)
                                    .font(.custom("Sora-Regular", size: 18))
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(selectedSize == size ? .color1.opacity(0.1) : .white)
                                    .foregroundColor(selectedSize == size ? .color1 : .black)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(selectedSize == size ? .color1 : Color.gray, lineWidth: 2)
                                    )
                                    .cornerRadius(14)
                            }
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 120)
            }
            .background(.gray.opacity(0.05))

            
            VStack {
                Spacer()
                
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Price")
                            .font(.custom("Sora-Regular", size: 14))
                            .foregroundColor(.gray)

                        Text("$ \(price, specifier: "%.2f")")
                            .font(.custom("Sora-Regular", size:24))
                            .fontWeight(.bold)
                            .foregroundColor(.color1)
                    }

                    Spacer()

                    Button(action: {
                        print("Comprar agora")
                    }) {
                        Text("Buy Now")
                            .font(.custom("Sora-Semibold", size: 18))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 20)
                            .background(.color1)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                    .frame(width: 220)
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 32)
                .background(.white)
                .cornerRadius(24)
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundStyle(.black)
                }
            }

            ToolbarItem(placement: .principal) {
                Text("Detail")
                    .font(.system(size: 18, weight: .bold))
            }

            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    print("Favorito pressionado")
                }) {
                    Image(systemName: "heart")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundStyle(.black)
                }
            }
        }
        .onAppear {
            tabBarVisibilityManager.isTabBarVisible = false
        }
        .onDisappear {
            tabBarVisibilityManager.isTabBarVisible = true
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CoffeeDetail(coffee: CoffeeModel(coffeeName: "Express", coffeeType: "Espresso", rating: 4.5, price: 3.99))
}
