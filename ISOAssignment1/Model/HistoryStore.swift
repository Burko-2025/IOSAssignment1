//
//  HistoryStore.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-28.
//


import SwiftUI

// Represents a single customer order
struct CustomerOrder {

    // Name of the customer who placed the order
    let customerName: String

    // List of items included in the order
    let items: [String]
}

// Observable object that stores and manages order history
class HistoryStore: ObservableObject {

    // Published property so SwiftUI views automatically update
    // whenever the order history changes
    @Published var orders: [CustomerOrder] = []

    // Saves a new order to the history
    func saveOrder(customerName: String, items: [String]) {

        // Create a new CustomerOrder object using the provided data
        let newOrder = CustomerOrder(
            customerName: customerName,
            items: items
        )

        // Add the new order to the orders array
        orders.append(newOrder)
    }

    // Removes all saved orders from history
    func clearOrders() {

        // Empty the orders array
        orders.removeAll()
    }
}
