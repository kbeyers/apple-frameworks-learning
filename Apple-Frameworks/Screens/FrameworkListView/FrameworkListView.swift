//
//  FrameworkListView.swift
//  Apple-Frameworks
//
//  Created by Kyle Beyers on 05/06/2024.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    //    @Binding var homeDisplayStyle: HomeDisplayStyle
    @Binding var isGridDisplay: Bool
    
    var body: some View {
        List {
            ForEach(MockData.frameworks) { framework in
                NavigationLink(destination: FrameworkDetailView(framework: framework,
                                                                isShowingDetailView: $viewModel.isShowingDetailView,
                                                                isGridDisplay: $isGridDisplay)) {
                    FrameworkTitleView(framework: framework, isGridDisplay: $isGridDisplay)
                }
            }
        }
    }
}

#Preview {
    FrameworkListView(isGridDisplay: .constant(true))
}
