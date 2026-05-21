//
//  OrdersView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

// A single screen showing one customer's orders
struct OrdersView: View {

    // (Unused right now) List of names only — you actually don't need this
    let customerNames = [
        "John Doe", "Jane Doe", "Michael Smith", "Alice Brown", "Bob Right"
    ]

    // Main data model: each customer has a name and a list of orders
    let customers = [
        Customer(name: "John Doe", orders: ["Bagel", "Coffee"]),
        Customer(name: "Jane Doe", orders: ["Tea", "Donuts", "Ice Cap"]),
        Customer(name: "Michael Smith", orders: ["BLT Bagel", "Lemonade"]),
        Customer(name: "Alice Brown", orders: ["Avocado Toast"]),
        Customer(name: "Bob Right", orders: ["French Toast", "Chocolate Chip Cookie", "Coffee"])
    ]

    // Index tells us which customer/page we are currently showing
    let index: Int

    // Current page from TabView (used for highlighting in HeaderView)
    let currentPage: Int

    var body: some View {

        VStack {

            // Header showing customer name and page indicator
            HeaderView(
                customerName: customerNames[index], // could also use customers[index].name
                currentPage: currentPage
            )

            // Loop through this customer's orders and display each one
            ForEach(customers[index].orders, id: \.self) { item in

                Text("~ \(item)") // adds "~" before each order item
                    .font(.headline)
            }
        }
    }
}

// Data model representing a customer and their orders
struct Customer {
    let name: String
    let orders: [String]
}

#Preview {
    OrdersView(index: 1, currentPage: 2)
}
