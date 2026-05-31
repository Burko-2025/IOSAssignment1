//
//  Order.swift
//  ISOAssignment1
//
//  Created by Kyle Burk on 2026-05-21.
//

//import Foundation
//
///// Represents a menu item in the order system
//struct Order {
//    
//    /// Stores the name of the menu item
//    let itemName: String
//    
//    /// Enum containing all menu items
//    enum OrderEnum: String {
//        case bagel = "Bagel"
//        case donuts = "Donuts"
//        case coffee = "Coffee"
//        case tea = "Tea"
//        case iceCap = "Ice Cap"
//        case cappuccino = "Cappuccino"
//        case bltBagel = "BLT Bagel"
//        case turkeyBLT = "Turkey BLT"
//        case eggSaladSandwich = "Egg Salad Sandwich"
//        case avocadoToast = "Avocado Toast"
//        case frenchToast = "French Toast"
//        case cinnamonRoll = "Cinnamon Roll"
//        case blueberryMuffin = "Blueberry Muffin"
//        case chocolateChipCookie = "Chocolate Chip Cookie"
//        case lemonade = "Lemonade"
//    }
//}
//
///// Extension containing all menu items
//extension Order {
//    
//    /// Shared list of all order items
//    static let items = [
//        Order(itemName: OrderEnum.bagel.rawValue),
//        Order(itemName: OrderEnum.donuts.rawValue),
//        Order(itemName: OrderEnum.coffee.rawValue),
//        Order(itemName: OrderEnum.tea.rawValue),
//        Order(itemName: OrderEnum.iceCap.rawValue),
//        Order(itemName: OrderEnum.cappuccino.rawValue),
//        Order(itemName: OrderEnum.bltBagel.rawValue),
//        Order(itemName: OrderEnum.turkeyBLT.rawValue),
//        Order(itemName: OrderEnum.eggSaladSandwich.rawValue),
//        Order(itemName: OrderEnum.avocadoToast.rawValue),
//        Order(itemName: OrderEnum.frenchToast.rawValue),
//        Order(itemName: OrderEnum.cinnamonRoll.rawValue),
//        Order(itemName: OrderEnum.blueberryMuffin.rawValue),
//        Order(itemName: OrderEnum.chocolateChipCookie.rawValue),
//        Order(itemName: OrderEnum.lemonade.rawValue)
//    ]
//}
import Foundation

struct Order {
    
    // Name of menu item
    let itemName: String
}

// Shared list of menu items
extension Order {
    
    static let items = [
        Order(itemName: "Bagel"),
        Order(itemName: "Donuts"),
        Order(itemName: "Coffee"),
        Order(itemName: "Tea"),
        Order(itemName: "Ice Cap"),
        Order(itemName: "Cappuccino"),
        Order(itemName: "BLT Bagel"),
        Order(itemName: "Turkey BLT"),
        Order(itemName: "Egg Salad Sandwich"),
        Order(itemName: "Avocado Toast"),
        Order(itemName: "French Toast"),
        Order(itemName: "Cinnamon Roll"),
        Order(itemName: "Blueberry Muffin"),
        Order(itemName: "Chocolate Chip Cookie"),
        Order(itemName: "Lemonade")
    ]
}
