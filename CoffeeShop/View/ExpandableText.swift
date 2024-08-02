//
//  ExpandableText.swift
//  Exemple
//
//  Created by Francisco Alexson Almeida da Silva on 18/03/25.
//

import SwiftUI

struct ExpandableText: View {
    let text: String
    @State private var isExpanded = false
    private let maxLength = 120
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(isExpanded ? text : String(text.prefix(maxLength)) + "...")
                .font(.custom("Sora-Regular", size: 14))
                .foregroundStyle(.color3.opacity(0.7))

            Button(action: {
                withAnimation {
                    isExpanded.toggle()
                }
            }) {
                Text(isExpanded ? "Show less" : "Read more")
                    .font(.custom("Sora-Semibold", size: 14))
                    .foregroundStyle(.color1)
            }
        }
    }
}

#Preview {
    ExpandableText(text: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the former steamed to froth and the latter steamed to a light, velvety temperature. It is one of the most popular drinks in the world, especially in Italy, where it is called caffè macchiato.")
}
