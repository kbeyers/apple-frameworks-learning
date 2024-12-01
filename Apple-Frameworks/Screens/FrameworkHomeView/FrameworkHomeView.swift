//
//  FrameworkHomeView.swift
//  Apple-Frameworks
//
//  Created by Kyle Beyers on 05/06/2024.
//

import SwiftUI

struct FrameworkHomeView: View {
    
    //    @State var homeDisplayStyle: HomeDisplayStyle = .grid
    @State var isGridDisplay: Bool = true
    
    var body: some View {
        NavigationView {
            
            if isGridDisplay {
                FrameworkGridView(isGridDisplay: $isGridDisplay)
                    .navigationTitle("Framework")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: FrameworkSettingsView(isGridDisplay: $isGridDisplay)) {
                                SettingsButton(imageName: "gearshape")
                            }
                        }
                    }
            } else {
                FrameworkListView(isGridDisplay: $isGridDisplay)
                    .navigationTitle("Framework")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: FrameworkSettingsView(isGridDisplay: $isGridDisplay)) {
                                SettingsButton(imageName: "gearshape")
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    FrameworkHomeView()
}

// MARK: Display Enum
enum HomeDisplayStyle {
    case grid
    case list
}
