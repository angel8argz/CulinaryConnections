import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Home Page")
                    .resizable()
                    //.scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                    .padding(.top, -40)
                    .frame(maxHeight: .infinity, alignment: .top)

                VStack {
                    Spacer() // Push buttons down

                    HStack {
                        NavigationLink(destination: RecipeView()) {
                            Image("Create Post")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 70) // Adjust button size
                                .foregroundColor(.white) // Set image tint color
                        }
                        .offset(x: 170, y: -300)

                        Spacer() // Space between buttons
                    }
                    .padding(.horizontal) // Add some horizontal padding

                    Spacer() // Add space below buttons
                    
                }
            }
            .navigationBarHidden(true) // Hide navigation bar
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
