//
//  AccountView.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/26/24.
//

import SwiftUI

struct AccountView: View {
//    @State private var firstName = ""
//    @State private var lastName = ""
//    @State private var email = ""
//    @State private var birthDate = Date()
//    @State private var extraNapkins = false
//    @State private var frequentRefills = false
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit {
                            focusedTextField = .lastName
                        }
                        .submitLabel(.next)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit {
                            focusedTextField = .email
                        }
                        .submitLabel(.next)
                    TextField("Email Name", text: $viewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit {
                            focusedTextField = nil
                        }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)

                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))

                
            }
            
                .navigationTitle("Account")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard){
                        Button("Dismiss") {
                            focusedTextField = nil
                        }
                    }
                }
        }
        .onAppear{
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem ){ alertItem in
            Alert(title:alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
            
        }
    }
}

#Preview {
    AccountView()
}
