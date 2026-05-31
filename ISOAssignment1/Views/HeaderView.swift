import SwiftUI

struct HeaderView: View {

    // The name of the customer shown at the top of the screen
    let customerName: String

    // The current page index from the TabView (used to highlight the correct circle)
    let currentPage: Int
    

    var body: some View {

        VStack {

            // Displays the customer's name in large text
            Text(customerName)
                .font(.largeTitle)

            // Horizontal row of numbered circle icons (1 to 5)
            HStack {

                ForEach(0..<CustomerName.customers.count, id: \.self) { index in

                    Image(systemName: "\(index + 1).circle.fill")
                        .foregroundColor(
                            currentPage == index + 1
                            ? .blue
                            : .gray
                        )
                }
            }
            
            .font(.title2)
        }
    }
}

#Preview {
    HeaderView(
        customerName: "John Doe",
        currentPage: 1
    )
}
