//
//  WelcomeView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

struct WelcomeView: View {
    let orderNames = ["~ Bagel", "~ Donuts", "~ Coffee", "~ Tea", "~ Ice Cap", "~ Cappucino", "~ BLT Bagel", "~ Turkey BLT", "~ Egg Salad Sandwich", "~ Avocado Toast",  "~ French Toast", "~ Cinnamon Roll", "~ Blueberry Muffin", "~ Chocolate Chip Cookie", "~ Lemonade"]

    var body: some View {
        VStack(spacing: 20) {

            Text("Welcome to our Tim Hortons App!")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .lineLimit(nil)

            Text("This is a list of possible menu items that you can order.")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .lineLimit(nil)

            
            
            
            ForEach(orderNames, id: \.self) { item in
                Text(item)
                    .font(.headline)
            }
        }

    }
}

#Preview {
    WelcomeView()
}

