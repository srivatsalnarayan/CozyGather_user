import SwiftUI

struct ViewVendr1: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {

                HStack {
                    Button(action: {
                        // Add action for when the back button is tapped
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.blue) // Adjust color as needed
                    }
                    .position(CGPoint(x: 30.0, y: 10.0))

                    Spacer()

                    Label("        Photos", systemImage: "")
                        .font(Font.custom("AirbnbCereal_W_Md", size: 24))
                        .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                        .padding(.bottom, 20)
                        .position(CGPoint(x: -30, y: 20))

                    Spacer()

                }
                .padding()

                
                // Grid of Photos
                LazyVGrid(columns: Array(repeating: GridItem(), count: 2), spacing: 16) {
                    ForEach(1...8, id: \.self) { index in
                        Image("photo\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: 150)
                            .cornerRadius(8)
                            .clipped()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                }
                .padding()
                

            }
        }
        .navigationBarTitle("Vendor 1", displayMode: .inline)
    }
}

struct ViewVendr1_Previews: PreviewProvider {
    static var previews: some View {
        ViewVendr1()
    }
}
