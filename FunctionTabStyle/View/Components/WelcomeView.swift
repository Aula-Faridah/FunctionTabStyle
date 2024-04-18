//
//  WelcomeView.swift
//  FunctionTabStyle
//
//  Created by MacBook Pro on 18/04/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        Text(welcomeMessage())
            .font(.system(.title, design: .serif))
        
    }
    
    func welcomeMessage() -> String {
        "Welcome to my life"
    }
}

#Preview {
    WelcomeView()
}
