//
//  OrdersView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

struct OrdersView: View {

    // Index of the current customer being displayed
    let index: Int

    // Binding to the current page in the TabView
    @Binding var currentPage: Int

    // Shared order history used to save completed orders
    @ObservedObject var historyStore: HistoryStore

    // Stores the items selected by the current customer
    @State private var selectedItems: [String] = []

    var body: some View {

        VStack {

            // Displays the customer's name and page information
            HeaderView(
                customerName: CustomerName.customers[index].customerName,
                currentPage: currentPage
            )

            // Allows scrolling through the menu items
            ScrollView {

                VStack(spacing: 15) {

                    // Create a row for every available menu item
                    ForEach(Order.items, id: \.itemName) { item in

                        Button {

                            // Toggle item selection when tapped
                            if selectedItems.contains(item.itemName) {

                                // Remove item if already selected
                                selectedItems.removeAll {
                                    $0 == item.itemName
                                }

                            } else {

                                // Add item if not already selected
                                selectedItems.append(item.itemName)
                            }

                        } label: {

                            HStack {

                                // Display menu item name
                                Text(item.itemName)
                                    .font(.headline)

                                Spacer()

                                // Show a filled checkmark when selected,
                                // otherwise show an empty circle
                                Image(
                                    systemName:
                                        selectedItems.contains(item.itemName)
                                    ? "checkmark.circle.fill"
                                    : "circle"
                                )
                                .foregroundColor(.blue)
                            }
                            .padding(.horizontal)
                        }

                        // Removes the default button styling
                        .buttonStyle(.plain)
                    }
                }
                .padding(.top)
            }

            // Button to save the current customer's order
            // and move to the next page
            Button {

                // Save the completed order to history
                historyStore.saveOrder(
                    customerName:
                        CustomerName.customers[index].customerName,
                    items: selectedItems
                )

                // Move to the next customer page
                if currentPage < CustomerName.customers.count {

                    currentPage += 1

                } else {

                    // Navigate to the order summary page
                    currentPage = CustomerName.customers.count + 1
                }

            } label: {

                // Change button text for the last customer
                Text(
                    index == CustomerName.customers.count - 1
                    ? "Finish Orders"
                    : "Done"
                )
                .font(.title3)
                .fontWeight(.bold)
                .padding()

                // Make button fill available width
                .frame(maxWidth: .infinity)

                // Style the button
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(15)
                .padding()
            }
        }

        // Clear selected items when returning to the welcome page
        .onChange(of: currentPage) {

            if currentPage == 0 {

                selectedItems.removeAll()
            }
        }
    }
}

// Preview for Xcode Canvas
#Preview {
    OrdersView(
        index: 0,
        currentPage: .constant(1),
        historyStore: HistoryStore()
    )
}

