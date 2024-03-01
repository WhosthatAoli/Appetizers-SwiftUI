//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/27/24.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject{
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() async{
        isLoading = true
        
        do {
            appetizers = try await NetworkManager.shared.getAppetizers()
        } catch {
            alertItem = AlertContext.invalidResponse
        }
        
        isLoading = false
    }
}
