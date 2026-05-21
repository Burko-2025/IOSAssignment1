//
//  WelcomeView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

struct WelcomeView: View {

    // List of menu items (kept clean without formatting like "~")
    let orderNames = [
        "Bagel", "Donuts", "Coffee", "Tea", "Ice Cap", "Cappuccino", "BLT Bagel", "Turkey BLT", "Egg Salad Sandwich", "Avocado Toast", "French Toast", "Cinnamon Roll", "Blueberry Muffin", "Chocolate Chip Cookie", "Lemonade"
    ]

    var body: some View {

        VStack(spacing: 20) {

            // Main title of the screen
            Text("Welcome to our Tim Hortons App!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)

            // Subtitle / description text
            Text("This is a list of possible menu items that you can order.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)

            // List of menu items
            VStack(alignment: .leading, spacing: 8) {

                ForEach(orderNames, id: \.self) { item in

                    // Display each item with a "~" prefix
                    Text("~ \(item)")
                        .font(.headline)
                }
            }

            // Push content toward top if screen is large
            Spacer()
        }
        .padding()
    }
}

#Preview {
    WelcomeView()
}

