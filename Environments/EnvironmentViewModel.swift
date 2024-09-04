//
//  EnvironmentViewModel.swift
//  Environments
//
//  Created by Manyuchi, Carrington C on 2024/09/04.
//

import Foundation
import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }

    func getData() {
        self.dataArray.append(contentsOf: [ "iMac", "iPad", "iPhone", "Apple Watch"])
    }
    
    
}
