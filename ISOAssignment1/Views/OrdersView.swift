//
//  OrdersView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

struct OrdersView: View {

    let customerNames = [
        "John Doe", "Jane Doe", "Michael Smith", "Alice Brown", "Bob Right"
    ]
    let customers = [
        Customer(name: "John Doe", orders: ["Bagel", "Coffee"]),
        Customer(name: "Jane Doe", orders: ["Tea", "Donuts", "Ice Cap"]),
        Customer(name: "Michael Smith", orders: ["BLT Bagel", "Lemonade"]),
        Customer(name: "Alice Brown", orders: ["Avocado Toast"]),
        Customer(name: "Bob Right", orders: ["French Toast", "Chocolate Chip Cookie", "Coffee"])
    ]

    let index: Int
    let currentPage: Int

    var body: some View {
        VStack {
            HeaderView(
                customerName: customerNames[index],
                currentPage: currentPage
            )
            ForEach(customers[index].orders, id: \.self) { item in
                Text("~ \(item)")
                    .font(.headline)
            }
        }
    }
}
struct Customer {
    let name: String
    let orders: [String]
}
#Preview {
    OrdersView(index: 1, currentPage: 2)
}
