//
//  SettingsButton.swift
//  Apple-Frameworks
//
//  Created by Kyle Beyers on 06/06/2024.
//

import SwiftUI

struct SettingsButton: View {
    
    let imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .frame(width: 44, height: 44)
    }
}


#Preview {
    SettingsButton(imageName: "gearshape")
}
