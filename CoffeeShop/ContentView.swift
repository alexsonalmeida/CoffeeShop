//
//  ContentView.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 02/08/24.
//

import SwiftUI

struct ContentView: View {
    func signIn() {
        print("Logado")
    }
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .bottom) {
                VStack {
                    Image("Initial-Image")
                        .resizable()
                        .scaledToFill()
                        .frame(height: UIScreen.main.bounds.height * 0.65)
                        .clipped()
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height * 0.35)
                }
                VStack (spacing: 8) {
                    Text("Fall in Love with Coffee in Blissful Delight!")
                        .font(.custom("Sora-SemiBold", size: 32))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                    Text("Welcome to our cozy coffee corner, where every cup is a delightful for you.")
                        .font(.custom("Sora-Regular", size: 16))
                        .foregroundStyle(.color4)
                        .multilineTextAlignment(.center)
                    Button(action: signIn) {
                        NavigationLink(destination: TabBarView()) {
                            Text ("Get Started")
                                .padding(.vertical, 24)
                                .frame(maxWidth: .infinity)
                                .font(.custom("Sora-Bold", size: 20))
                                .foregroundStyle(Color(Color.color5))
                        }
                    }
                    .background(Color(Color.color1))
                    .cornerRadius(22.0)
                    .padding(.top, 20)
                    .padding(.bottom, 42)
                }
                .padding(.horizontal, 16)
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color(.black))
        }
    }
}

#Preview {
    ContentView()
}
