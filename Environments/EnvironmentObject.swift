//
//  ContentView.swift
//  Environments
//
//  Created by Manyuchi, Carrington C on 2024/09/04.
//
//  ObservedObject
//  StateObject
//  EnvironmentObject

import SwiftUI

struct EnvironmentObject: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item, viewModel: viewModel)
                    } label: {
                        Text(item)
                    }

                }
            }
            .navigationTitle("iOS Devices")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    EnvironmentObject()
}
