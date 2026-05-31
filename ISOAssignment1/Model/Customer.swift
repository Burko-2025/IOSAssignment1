//
//  Customer.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-28.
//

import Foundation

struct CustomerName {
    
    // Stores one customer's name
    let customerName: String
    
    // Enum containing all customer names
    enum CustomerEnum: String {
        case johnDoe = "John Doe"
        case janeDoe = "Jane Doe"
        case michaelSmith = "Michael Smith"
        case aliceBrown = "Alice Brown"
        case bobRight = "Bob Right"
    }
}

// Extension MUST be outside the struct
extension CustomerName {
    
    // Array of all customers
    static let customers = [
        CustomerName(customerName: CustomerEnum.johnDoe.rawValue),
        CustomerName(customerName: CustomerEnum.janeDoe.rawValue),
        CustomerName(customerName: CustomerEnum.michaelSmith.rawValue),
        CustomerName(customerName: CustomerEnum.aliceBrown.rawValue),
        CustomerName(customerName: CustomerEnum.bobRight.rawValue)
    ]
}
    

