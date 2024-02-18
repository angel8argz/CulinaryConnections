import SwiftUI

struct RecipeView: View {
    var body: some View {
        ZStack {
            Image("Create Recipe")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                    NavigationLink(destination: ExploreView()) {
                        Text("Your Button Text")
                            .foregroundColor(.clear)
                            .padding()
                            .background(Color.clear)
                            .cornerRadius(10)
                    }
                .padding()
                .offset(x: 0, y: -10)
            }
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}

