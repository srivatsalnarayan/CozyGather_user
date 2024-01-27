import SwiftUI

struct BudgetApp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Button(action: {
                            // Handle back button action
                        }) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.blue)
                        }
                        .padding(.leading)
                        
                        Spacer()
                        
                        Text("Budget")
                            .font(.title)
                            .foregroundColor(.blue)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("Spent:")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text("$500") // Placeholder value, replace with actual spent amount
                            .font(.title)
                            .foregroundColor(.green)
                        
                        Spacer()
                        
                        Text("Forecast:")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text("$700") // Placeholder value, replace with actual forecast amount
                            .font(.title)
                            .foregroundColor(.orange)
                    }
                    .padding(.horizontal)
                    
                    BoxView()
                    
                    SpendingChart()
                    
                    ExpensesList()
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

struct BoxView: View {
    var body: some View {
        VStack {
            HStack {
                Text("My Costs")
                    .font(.headline)
                    .foregroundColor(.black)
                
                Spacer()
                
                // Dropdown selection (placeholder)
                Text("Week")
                    .foregroundColor(.blue)
                    .padding(.trailing)
            }
            .padding(.horizontal)
            
            // Placeholder content for the box
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 150)
                .foregroundColor(.gray)
        }
    }
}

struct SpendingChart: View {
    var body: some View {
        VStack {
            Text("Spending Chart")
                .font(.headline)
                .foregroundColor(.black)
                .padding(.top)
            
            // Placeholder bar chart (hardcoded)
            RoundedRectangle(cornerRadius: 8)
                .frame(height: 200)
                .foregroundColor(.blue)
        }
        .padding()
    }
}

struct ExpensesList: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Expenses")
                .font(.headline)
                .foregroundColor(.black)
                .padding(.top)
            
            // Placeholder content for expenses list
            ForEach(1...5, id: \.self) { index in
                HStack {
                    Text("Vendor \(index)")
                    Spacer()
                    Text("$100")
                }
                .padding(.bottom, 8)
            }
        }
        .padding()
    }
}

struct BudgetApp_Previews: PreviewProvider {
    static var previews: some View {
        BudgetApp()
    }
}

// Add appropriate styles and actions based on your actual requirements
