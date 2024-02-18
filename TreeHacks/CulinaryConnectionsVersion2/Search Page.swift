import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            Image("Search Page")
                .resizable()
                .scaledToFill()
                .padding(.top, 0)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                NavigationLink(destination: ResultView()){
                    Text("Your Button Text")
                        .foregroundColor(.clear)
                        .padding(.horizontal, 20) // Adjust horizontal padding
                        .padding(.vertical, 20)
                        .background(Color.clear)
                        .cornerRadius(10)
                }
                .padding()
                .offset(x: -50, y: -740)
                
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

