import SwiftUI

struct ResultView: View {
    var body: some View {
        ZStack {
            Image("Search Page Example")
                .resizable()
                .scaledToFill()
                .padding(.top, 0)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                NavigationLink(destination: FriendsView()){
                    Text("Your Button Text")
                        .foregroundColor(.clear)
                        .padding(.horizontal, 20) // Adjust horizontal padding
                        .padding(.vertical, 20)
                        .background(Color.clear)
                        .cornerRadius(10)
                }
                .padding()
                .offset(x: -85, y: -740)
                
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}

