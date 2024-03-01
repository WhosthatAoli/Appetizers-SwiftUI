//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/28/24.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.medium)
                .frame(width: 44,height: 44)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    XDismissButton()
}
