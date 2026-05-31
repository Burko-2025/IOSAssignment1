//
//  ContentView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

struct ContentView: View {

    // Keeps track of the currently displayed page in the TabView
    @State private var currentPage = 0

    // Creates a shared order history object that persists
    // while the app is running
    @StateObject private var historyStore = HistoryStore()

    var body: some View {

        // Page-based navigation container
        TabView(selection: $currentPage) {

            // First page shown when the app launches
            WelcomeView(selectedPage: $currentPage)
                .tag(0)

            // Creates an order page for each customer
            ForEach(0..<CustomerName.customers.count, id: \.self) { index in

                OrdersView(
                    index: index,
                    currentPage: $currentPage,
                    historyStore: historyStore
                )
                // Tags each page so TabView knows which page is selected
                .tag(index + 1)
            }

            // Final page displaying all completed orders
            OrderSummaryView(
                historyStore: historyStore,
                currentPage: $currentPage
            )
            .tag(CustomerName.customers.count + 1)
        }

        // Uses a page-style TabView and hides the default page indicators
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

// Preview for Xcode Canvas
#Preview {
    ContentView()
}
