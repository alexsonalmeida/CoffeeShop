//
//  Home.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 21/08/24.
//

import SwiftUI

struct Home: View {
    @State var coffeName = ""
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    let coffees: [CoffeeModel] = [
        CoffeeModel(coffeeName: "Caffe Mocha", coffeeType: "Deep Foam", rating: 4.8, price: 4.53),
        CoffeeModel(coffeeName: "Flat White", coffeeType: "Espresso", rating: 4.9, price: 3.72),
        CoffeeModel(coffeeName: "Latte", coffeeType: "Milk-based", rating: 4.8, price: 3.99),
        CoffeeModel(coffeeName: "Express", coffeeType: "Foamy", rating: 4.7, price: 4.49)
    ]
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                ZStack {
                    VStack(spacing: 0) {
                        LinearGradient(colors: [.homeGradienteLight, .homeGradienteDark], startPoint: .topTrailing, endPoint: .bottomLeading)
                            .frame(height: UIScreen.main.bounds.height * 0.3)
                        
                        Color.gray.opacity(0)
                    }
                    
                    VStack {
                        VStack(alignment: .leading, spacing: 20) {
                            VStack(alignment: .leading, spacing: 6) {
                                Text("Location")
                                    .font(.custom("Sora-Regular", size: 14))
                                    .foregroundColor(.gray)
                                
                                HStack {
                                    Text("Bilzen, Tanjungbalai")
                                        .font(.custom("Sora-SemiBold", size: 20))
                                        .foregroundColor(.white)
                                    
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(.white)
                                }
                            }
                            
                            HStack(spacing: 16) {
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray.opacity(0.9))
                                        .padding(.leading, 16)
                                    
                                    TextField("", text: $coffeName, prompt: Text("Search your coffee").foregroundColor(.gray.opacity(0.8)).font(.custom("Sora-Regular", size: 16)))
                                        .padding()
                                        .padding(.leading, -8)
                                        .foregroundColor(.white)
                                }
                                .background(.gray.opacity(0.12))
                                .cornerRadius(10)
                                .shadow(color: .gray.opacity(0.2), radius: 3, x: 0, y: 2)
                                
                                Button(action: {}) {
                                    Image(systemName: "slider.horizontal.3")
                                        .padding()
                                        .background(.color1)
                                        .foregroundStyle(.white)
                                        .clipShape(.rect(cornerRadius: 9))
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 56)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Image("Banner-home")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: UIScreen.main.bounds.width)
                            .padding()
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                Button(action: {}) {
                                    Text("All Coffee")
                                        .font(.custom("Sora-SemiBold", size: 16))
                                        .padding(10)
                                        .background(.color1)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                                .fixedSize(horizontal: true, vertical: false)
                                
                                ForEach(["Macchiato", "Latte", "Americano", "Flat"], id: \.self) { coffee in
                                    Button(action: {}) {
                                        Text(coffee)
                                            .font(.custom("Sora-Regular", size: 16))
                                            .padding(10)
                                            .background(Color.gray.opacity(0.2))
                                            .foregroundColor(.black)
                                            .cornerRadius(10)
                                    }
                                    .fixedSize(horizontal: true, vertical: false)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom, 20)
                        }
                        
                        LazyVGrid(columns: columns, spacing: 10) {
                                ForEach(coffees) { coffee in
                                    CoffeeCard(coffee: coffee)
                                }

                        }
                        .padding(.horizontal, 8)
                    }
                }
            }
            .background(.gray.opacity(0.08))
            .ignoresSafeArea(edges: .top)
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 100)
            }
        }
    }
}

#Preview {
    Home()
}
