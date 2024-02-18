import SwiftUI

struct ExploreView: View {
    var body: some View {
        ZStack {
            Image("Explore Page")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                NavigationLink(destination: ChickenView()){
                    Text("Your Button Text")
                        .foregroundColor(.clear)
                        .padding(.horizontal, 20) // Adjust horizontal padding
                        .padding(.vertical, 70)
                        .background(Color.clear)
                        .cornerRadius(10)
                }
                .padding()
                .offset(x: 98, y: -498)
                
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

