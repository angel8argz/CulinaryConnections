import SwiftUI

struct ChickenView: View {
    var body: some View {
        ZStack {
            Image("Chicken")
                .resizable()
                .scaledToFill()
                .padding(.top, -9)
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
                .offset(x: 98)
                
            }
        }
    }
}

struct ChickenView_Previews: PreviewProvider {
    static var previews: some View {
        ChickenView()
    }
}

