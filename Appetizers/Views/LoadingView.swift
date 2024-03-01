//
//  LoadingView.swift
//  Appetizers
//
//  Created by Shaohua Zhang on 2/27/24.
//

import SwiftUI
struct ActivityIndicator: UIViewRepresentable{
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
    
    func makeUIView(context: Context) -> some UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor(named: "brandPrimary")
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
