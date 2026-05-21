//
//  ContentView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

struct ContentView: View {
    @State private var currentPage = 0

    var body: some View {
        TabView(selection: $currentPage) {

            WelcomeView()
                .tag(0)

            ForEach(0..<5) { index in
                OrdersView(
                    index: index,
                    currentPage: currentPage
                )
                    .tag(index + 1)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}
#Preview {
    ContentView()
}
