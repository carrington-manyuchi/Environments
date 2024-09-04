//
//  DetailView.swift
//  Environments
//
//  Created by Manyuchi, Carrington C on 2024/09/04.
//

import SwiftUI

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }            
        }
    }
}

#Preview {
    DetailView(selectedItem: "selectedItem")
}
