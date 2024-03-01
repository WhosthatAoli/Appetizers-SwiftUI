//
//  EmptyState.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/29/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName : String
    let message: String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image(imageName).resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y:-40)
        }
        
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "Default message")
}
