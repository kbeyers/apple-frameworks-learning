//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Kyle Beyers on 03/06/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    //    @Binding var homeDisplayStyle: HomeDisplayStyle
    @Binding var isGridDisplay: Bool
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(MockData.frameworks) { framework in
                    FrameworkTitleView(framework: framework, isGridDisplay: $isGridDisplay)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                }
            }
        }
        .sheet(isPresented: $viewModel.isShowingDetailView) {
            FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                isShowingDetailView: $viewModel.isShowingDetailView,
                                isGridDisplay: $isGridDisplay)
        }
    }
}

#Preview {
    FrameworkGridView(isGridDisplay: .constant(true))
}


