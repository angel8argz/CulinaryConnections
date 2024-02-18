import SwiftUI

struct LeoView: View {
    var body: some View {
        ZStack {
            Image("Leo")
                .resizable()
                .scaledToFill()
                .padding(.top, 0)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                NavigationLink(destination: SearchView()){
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

struct LeoView_Previews: PreviewProvider {
    static var previews: some View {
        LeoView()
    }
}

