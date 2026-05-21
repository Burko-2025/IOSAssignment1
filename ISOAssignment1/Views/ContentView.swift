//
//  ContentView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

struct ContentView: View {

    // Tracks which page the user is currently on in the TabView
    @State private var currentPage = 0

    var body: some View {

        // TabView creates a swipeable page-style interface
        TabView(selection: $currentPage) {

            // First page: Welcome screen
            WelcomeView()
                .tag(0) // Assigns this view the index 0 so it matches currentPage

            // Creates 5 order pages using a loop (0 to 4)
            ForEach(0..<5) { index in

                OrdersView(
                    index: index,           // Which customer/order data to show
                    currentPage: currentPage // Pass current page for UI updates (like highlighting)
                )
                .tag(index + 1) // Tags pages 1–5 so swipe position updates currentPage
            }
        }

        // Makes the TabView behave like swipeable pages (horizontal paging dots hidden)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
