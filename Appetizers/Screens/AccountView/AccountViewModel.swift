//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/29/24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
//    @Published var firstName = ""
//    @Published var lastName = ""
//    @Published var email = ""
//    @Published var birthDate = Date()
//    @Published var extraNapkins = false
//    @Published var frequentRefills = false
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else{
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func retrieveUser(){
        guard let userData = userData else {return}
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        }catch {
            alertItem = AlertContext.invalidUserData
        }
        
    }
    
    func saveChanges(){
        guard isValidForm else {return}
        
        print("Changes have been saved successfully")
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        }catch{
            alertItem = AlertContext.invalidUserData
        }
    }
}

