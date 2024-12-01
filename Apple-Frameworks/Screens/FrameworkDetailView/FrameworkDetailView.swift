//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Kyle Beyers on 04/06/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    //    @Binding var homeDisplayStyle: HomeDisplayStyle
    @Binding var isGridDisplay: Bool
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            if isGridDisplay {
                XDismissButton(isShowingDetailView: $isShowingDetailView)
            }
            
            Spacer()
            
            FrameworkTitleView(framework: framework, isGridDisplay: $isGridDisplay)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

struct FrameworkDetailView_Preview: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework,
                            isShowingDetailView: .constant(false),
                            isGridDisplay: .constant(true))
    }
}
