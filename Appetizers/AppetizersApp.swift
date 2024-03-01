//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/26/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
