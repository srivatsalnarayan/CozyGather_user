import SwiftUI

struct FilterScreen: View {
    @State private var selectedStatus: String = "Open"
    @State private var selectedDate: String = "Today"
    @State private var locationText: String = ""
    @State private var priceLowerBound: Double = 1000
    @State private var priceUpperBound: Double = 10000
    @State private var isResetPressed: Bool = false
    
    var categories = ["vendr1", "vendr2", "vendr3", "vendr4", "photo1"]
    
    var body: some View {
        ScrollView{
            VStack {
                // Heading
                Text("   ")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                // Time and Date Section
                Section(header: Text("Time and Date")) {
                    HStack {
                        FilterButton(imageName: "calendar", label: "Today", isSelected: selectedDate == "Today") {
                            selectedDate = "Today"
                        }
                        FilterButton(imageName: "calendar", label: "Tomorrow", isSelected: selectedDate == "Tomorrow") {
                            selectedDate = "Tomorrow"
                        }
                        FilterButton(imageName: "calendar", label: "This Week", isSelected: selectedDate == "This Week") {
                            selectedDate = "This Week"
                        }
                    }
                }
                .padding()
                
                // Categories Section with Horizontal Scroll View
                Section(header: Text("Categories")) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(categories, id: \.self) { categoryImage in
                                CategoryView(categoryImage: categoryImage)
                            }
                        }
                    }
                }
                .padding()
                
                // Location Section
                Section(header: Text("Location")) {
                    HStack {
                        Image(systemName: "location.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                        TextField("Enter location", text: $locationText)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                            .padding(.horizontal)
                    }
                }
                .padding()
                
                // Price Range Section
                Section(header: Text("Select Price Range")) {
                    VStack {
                        HStack {
                            Text("INR \(Int(priceLowerBound))")
                            Spacer()
                            Text("INR \(Int(priceUpperBound))")
                        }
                        Slider(value: $priceLowerBound, in: 1000...priceUpperBound, step: 1000)
                        Slider(value: $priceUpperBound, in: priceLowerBound...10000, step: 1000)
                    }
                }
                .padding()
                
                // Reset and Apply Buttons
                HStack {
                    Button("Reset") {
                        // Add action for reset button
                        isResetPressed.toggle()
                    }
                    .padding()
                    .background(Color.clear)
                    .foregroundColor(.purple)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.purple, lineWidth: 1)
                    )
                    .padding()
                    
                    Button("Apply") {
                        // Add action for apply button
                    }
                    .padding()
                    .background(Color.clear)
                    .foregroundColor(.purple)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.purple, lineWidth: 1)
                    )
                    .padding()
                }
                .padding()
            }
        }
    }
    
    struct CategoryView: View {
        var categoryImage: String
        
        var body: some View {
            VStack {
                Image(categoryImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 8)
        }
    }
    
    struct FilterButton: View {
        var imageName: String
        var label: String
        var isSelected: Bool
        var action: () -> Void
        
        var body: some View {
            VStack {
                Image(systemName: imageName)
                    .font(.title)
                    .foregroundColor(isSelected ? .blue : .gray)
                Text(label)
                    .foregroundColor(isSelected ? .blue : .black)
            }
            .padding()
            .background(isSelected ? Color.blue.opacity(0.2) : Color.clear)
            .cornerRadius(10)
            .onTapGesture(perform: action)
        }
    }
    
    struct FilterScreen_Previews: PreviewProvider {
        static var previews: some View {
            FilterScreen()
        }
    }
    
}
