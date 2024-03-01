//
//  OrderView.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/26/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : Order
    
    
    var body: some View {
        NavigationView{
            
            ZStack{
                VStack{
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform:order.deleteItems) //onDelete pass index by swift ui
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("tap")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom,25)
                    
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order")
                }
                   
            } .navigationTitle("Orders")

        }
    }
    
}


#Preview {
    OrderView()
}
