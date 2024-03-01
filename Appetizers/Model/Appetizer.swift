//
//  Appetizer.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/26/24.
//

import Foundation

struct Appetizer : Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test", description: "Good", price: 9.99, imageURL: "", calories: 100, protein: 14, carbs: 12)
    
    static let appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
    static let OrderItems = [
        Appetizer(id: 0001, name: "Test", description: "Good", price: 9.99, imageURL: "", calories: 100, protein: 14, carbs: 12),
        Appetizer(id: 0002, name: "Test", description: "Good", price: 9.99, imageURL: "", calories: 100, protein: 14, carbs: 12),
        Appetizer(id: 0003, name: "Test", description: "Good", price: 9.99, imageURL: "", calories: 100, protein: 14, carbs: 12),
        

    ]
}
