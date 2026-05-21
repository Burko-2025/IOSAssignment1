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

                // Creates numbers 1 through 5 dynamically
                ForEach(1...5, id: \.self) { number in

                    Image(systemName: "\(number).circle.fill")

                        // Changes color depending on whether this number matches the current page
                        .foregroundColor(
                            currentPage == number
                            ? .blue   // highlighted (active page)
                            : .gray   // inactive page
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
