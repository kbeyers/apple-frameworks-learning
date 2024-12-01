//
//  FrameworkViewModel.swift
//  Apple-Frameworks
//
//  Created by Kyle Beyers on 04/06/2024.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var homeDisplayStyle: HomeDisplayStyle = .grid
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
