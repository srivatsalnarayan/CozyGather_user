import SwiftUI

struct Notification: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Button(action: {
                    // Add action for the back button
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.blue)
                        .position(CGPoint(x: 40.0, y: -200.0))
                        .frame(width: 100, height:100)
                }
                Spacer()

                Label("Notification", systemImage: "")
                    .font(Font.custom("AirbnbCereal_W_Md", size: 24))
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                    .padding(.bottom, 20)
                    .position(CGPoint(x: 0.0, y: -190.0))


                Spacer()

                Button(action: {
                    // Add action for the bell button
                }) {
                    Image(systemName: "bell")
                        .font(.title)
                        .foregroundColor(.blue)
                        .position(CGPoint(x: 85.0, y: -200.0))

                }
            }
            .padding()
            .background(Color.white)
            .padding(.top , -120)
            .frame(width: 450, height: 10)// Push everything down by adding top padding

            CustomNotificationBox(imageName: "vendr1", date: "January 25, 2024", description: "Hi.", timeButtonText: "")
                .padding()
                .position(CGPoint(x: 210.0, y: -250.0))
                .frame(width: 430, height: 10)

            CustomNotificationBox(imageName: "vendr2", date: "February 2, 2024", description: "Hello.", timeButtonText: "")
                .padding()
                .position(CGPoint(x: 210.0, y: -150.0))
                .frame(width: 430, height: 10)

        }
        .padding(.horizontal)
        .background(Color.white)
        .navigationBarHidden(true)
         // This line looks suspicious, you might want to review it

        // Hide the navigation bar
    }
}

struct Notifications_Preview: PreviewProvider {
    static var previews: some View {
        Notification()
    }
}

