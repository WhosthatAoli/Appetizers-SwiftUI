//
//  Order.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 3/1/24.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    
    func deleteItems(at offesets: IndexSet){
        items.remove(atOffsets: offesets)
    }
    
    var totalPrice: Double {
        items.reduce(0){ $0 + $1.price
        }
    }
}
