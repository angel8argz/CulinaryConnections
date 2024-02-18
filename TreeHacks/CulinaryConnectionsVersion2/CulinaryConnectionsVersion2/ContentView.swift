//
//  ContentView.swift
//  CulinaryConnectionsVersion2
//
//  Created by Leo Jia on 2/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Profile Section")
                .resizable()
                .scaledToFit()
                .padding(.top, -59)
                .frame(maxHeight: .infinity, alignment: .top)

            VStack {
                Spacer() // Push buttons down

                HStack {
                    Button(action: {
                        // Handle "Create Post" button action
                    }) {
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
    }
}


#Preview {
    ContentView()
}
