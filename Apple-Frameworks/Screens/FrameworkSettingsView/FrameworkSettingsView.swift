//
//  FrameworkSettingsView.swift
//  Apple-Frameworks
//
//  Created by Kyle Beyers on 06/06/2024.
//

import SwiftUI

struct FrameworkSettingsView: View  {
    
    //    @Binding var homeDisplayStyle: HomeDisplayStyle
    @Binding var isGridDisplay: Bool
    
    var body: some View {
        VStack {
            Form {
                Section("Display") {
                    Toggle("Grid", systemImage: "square.grid.2x2", isOn: $isGridDisplay)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .toggleStyle(.switch)
                }
            }
        }
        .padding()
    }
}

#Preview {
    FrameworkSettingsView(isGridDisplay: .constant(true))
}
