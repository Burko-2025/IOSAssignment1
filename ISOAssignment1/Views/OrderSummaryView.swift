import SwiftUI

struct OrderSummaryView: View {
    
    // Shared order history used to display all saved orders
    @ObservedObject var historyStore: HistoryStore
    
    // Binding used to control which page is shown in the TabView
    @Binding var currentPage: Int
    
    var body: some View {
        
        VStack {
            
            // Screen title
            Text("Today's Orders")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            // Allows the user to scroll through all orders
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Loop through every saved order in the history
                    ForEach(0..<historyStore.orders.count, id: \.self) { index in
                        
                        // Retrieve the current order
                        let order = historyStore.orders[index]
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            // Display the customer's name
                            Text(order.customerName)
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            // Display each item in the customer's order
                            ForEach(order.items, id: \.self) { item in
                                
                                Text("• \(item)")
                            }
                        }
                        .padding()
                        
                        // Expand card width and align content to the left
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        // Light gray background to separate orders visually
                        .background(Color.gray.opacity(0.1))
                        
                        // Rounded corners for a card-like appearance
                        .cornerRadius(12)
                    }
                }
                .padding()
            }
            
            // Button to finish the ordering session
            Button {
                
                // Remove all saved orders from history
                historyStore.clearOrders()
                
                // Navigate back to the Welcome screen
                currentPage = 0
                
            } label: {
                
                Text("Done Orders")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    
                    // Make the button fill the available width
                    .frame(maxWidth: .infinity)
                    
                    // Style the button
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding()
            }
        }
    }
}

// Preview for Xcode Canvas
#Preview {
    OrderSummaryView(
        historyStore: HistoryStore(),
        currentPage: .constant(0)
    )
}
