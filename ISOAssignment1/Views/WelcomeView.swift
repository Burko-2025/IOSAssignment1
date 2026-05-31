//
//  WelcomeView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

import SwiftUI

struct WelcomeView: View {
    
    // Controls which page is currently shown in TabView
    @Binding var selectedPage: Int
    
    var body: some View {
        
        VStack(spacing: 40) {
            
            Spacer()
            
            // App title
            Text("Welcome to My Tim Hortons App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            
            // Subtitle
            Text("Please enjoy yourself!")
                .font(.title2)
                .foregroundColor(.gray)
            
            // Start button
            Button {
                
                // Go to first customer page
                selectedPage = 1
                
            } label: {
                
                Text("Start")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(width: 200)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    WelcomeView(selectedPage: .constant(0))
}
