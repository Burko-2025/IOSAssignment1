//
//  CheckmarkView.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-28.
//


import SwiftUI

struct CheckmarkView: View {
    
    // Keeps track of whether the checkmark is selected or not
    @State private var isChecked = false
    
    var body: some View {
        
        // Displays a filled checkmark when selected,
        // otherwise displays an empty circle
        Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
        
            // Changes the color based on the selection state
            .foregroundColor(isChecked ? .green : .gray)
        
            // Sets the size of the icon
            .font(.title2)
        
            // Toggles the checkmark state when tapped
            .onTapGesture {
                isChecked.toggle()
            }
    }
}

// Preview provider for Xcode Canvas
#Preview {
    CheckmarkView()
}
