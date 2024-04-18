//
//  GreetingView.swift
//  FunctionTabStyle
//
//  Created by MacBook Pro on 18/04/24.
//

import SwiftUI

struct GreetingView: View {
    @State private var username: String = ""
    
    var body: some View {
        VStack(spacing: 28){
            TextField("Enter your name", text: $username)
                .padding()
            
            Text(createGreeting(username))
        }
    }
    
    func createGreeting(_ person: String) -> String {
        let greeting = "Halo, \(person)"
        return greeting
    }
}

#Preview {
    GreetingView()
}

