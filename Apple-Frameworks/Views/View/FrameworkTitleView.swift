//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Kyle Beyers on 05/06/2024.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    //    @Binding var homeDisplayStyle: HomeDisplayStyle
    @Binding var isGridDisplay: Bool
    
    var body: some View {
        
        if isGridDisplay {
            VStack {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90, height: 90)
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
            }
            .padding()
        } else {
            HStack {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 70, height: 70)
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.6)
                    .padding()
            }
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework, isGridDisplay: .constant(true))
}
