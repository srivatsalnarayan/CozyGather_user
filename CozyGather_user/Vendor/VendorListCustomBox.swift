
import SwiftUI

struct VendorListCustomBox: View {
    var imageName: String
    var title: String
    var description: String
    var numberOfStars: Int
    var price: String
    var hyperlinkText: String

    var body: some View {
        HStack {
            Image(imageName) // Use the custom image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding()

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.black)

                Text(description)
                    .foregroundColor(.gray)

                HStack {
                    ForEach(0..<numberOfStars) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
            }
            .padding()

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {
                Text(price)
                    .font(.headline)
                    .foregroundColor(.black)

                Button(action: {
                    // Handle button action
                }) {
                    Text(hyperlinkText)
                        .foregroundColor(.blue)
                        .underline()
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .inset(by: 0.5)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding()
    }
}

struct VendorListCustomBox_Previews: PreviewProvider {
    static var previews: some View {
        VendorListCustomBox(
            imageName: "vendr1",
            title: "Product Title",
            description: "Product description goes here.",
            numberOfStars: 5,
            price: "$19.99",
            hyperlinkText: "View Details"
        )
        .previewLayout(.sizeThatFits)
    }
}

