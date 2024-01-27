import SwiftUI

struct CustomNotificationBox: View {
    var imageName: String
    var date: String
    var description: String
    var timeButtonText: String

    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding()

            VStack(alignment: .leading) {
                Text(date)
                    .font(.headline)
                    .foregroundColor(.black)

                Text(description)
                    .foregroundColor(.gray)

                Spacer()
            }
            .padding()

            Text(timeButtonText)
                .foregroundColor(.blue)
                .underline()
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

struct CustomNotificationBoxs_Previews: PreviewProvider {
    static var previews: some View {
        CustomNotificationBox(imageName: "vendr1", date: "January 25, 2024", description: "Hi.", timeButtonText: "Time")
            .previewLayout(.sizeThatFits)
    }
}
