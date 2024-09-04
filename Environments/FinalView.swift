//
//  FinalView.swift
//  Environments
//
//  Created by Manyuchi, Carrington C on 2024/09/04.
//

import SwiftUI

struct FinalView: View {
    
    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.red, Color.blue, Color.green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            
            ScrollView {
                VStack(spacing: 20, content: {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                })
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    FinalView(viewModel: EnvironmentViewModel())
}
