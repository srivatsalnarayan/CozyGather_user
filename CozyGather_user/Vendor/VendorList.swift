import SwiftUI

struct VendorList: View {
    
    @State private var searchText: String = ""
    @State private var isFilterScreenPresented = false


    var body: some View {
        VStack {
   
            
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

                Label("Vendors", systemImage: "")
                    .font(Font.custom("AirbnbCereal_W_Md", size: 24))
                    .foregroundColor(Color(red: 0.07, green: 0.05, blue: 0.15))
                    .padding(.bottom, 20)
                    .position(CGPoint(x: -30, y: 20))

                Spacer()

            }
            .padding()

            TextField("Search", text: $searchText)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                .padding(.horizontal)
                .position(CGPoint(x: 195.0, y: -80.0))
            
            
            VStack {
                HStack {
                    // ... (existing code)

                    // Filter Button
                    Button(action: {
                        isFilterScreenPresented.toggle()
                    }) {
                        Capsule()
                            .fill(Color.blue)
                            .frame(width: 80, height: 40)
                            .overlay(
                                Text("Filter")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            )
                    }
                    .padding(.horizontal)
                }
                .padding()
                .position(CGPoint(x: 300.0, y: 100.0))

            }
            .sheet(isPresented: $isFilterScreenPresented) {
               FilterScreen()
            }.position(CGPoint(x: 200.0, y: -220.0))
            
            VStack {
              
                    VendorListCustomBox(
                        imageName: "vendr1",
                        title: "Product Title",
                        description: "Product description goes here.",
                        numberOfStars: 5,
                        price: "$19.99",
                        hyperlinkText: "View Details"
                    )
                
                VendorListCustomBox(
                    imageName: "vendr1",
                    title: "Product Title",
                    description: "Product description goes here.",
                    numberOfStars: 5,
                    price: "$19.99",
                    hyperlinkText: "View Details"
                )
                VendorListCustomBox(
                    imageName: "vendr1",
                    title: "Product Title",
                    description: "Product description goes here.",
                    numberOfStars: 5,
                    price: "$19.99",
                    hyperlinkText: "View Details"
                )
                VendorListCustomBox(
                    imageName: "vendr1",
                    title: "Product Title",
                    description: "Product description goes here.",
                    numberOfStars: 5,
                    price: "$19.99",
                    hyperlinkText: "View Details"
                )

            }
            .frame(width: 400, height: 10)
            .padding()
            .position(CGPoint(x: 190.0, y: -120.0))
        }
        
        
        
        
    }
}

struct VendorList_Previews: PreviewProvider {
    static var previews: some View {
        VendorList()
    }
}



