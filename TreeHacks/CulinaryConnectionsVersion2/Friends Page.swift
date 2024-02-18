import SwiftUI

struct FriendsView: View {
    var body: some View {
        ZStack {
            Image("Friends Page")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                NavigationLink(destination: LeoView()){
                    Text("Your Button Text")
                        .foregroundColor(.clear)
                        .padding(.horizontal, 20) // Adjust horizontal padding
                        .padding(.vertical, 70)
                        .background(Color.clear)
                        .cornerRadius(10)
                }
                .padding()
                .offset(x: -95, y: -533)
                
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}

