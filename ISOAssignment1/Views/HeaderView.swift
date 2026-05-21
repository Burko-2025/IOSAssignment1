import SwiftUI

struct HeaderView: View {

    let customerName: String
    let currentPage: Int

    var body: some View {

        VStack {

            Text(customerName)
                .font(.largeTitle)

            HStack {

                ForEach(1...5, id: \.self) { number in

                    Image(systemName: "\(number).circle.fill")
                        .foregroundColor(
                            currentPage == number
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
