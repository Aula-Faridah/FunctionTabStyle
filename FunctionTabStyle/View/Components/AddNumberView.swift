//
//  AddNumberView.swift
//  FunctionTabStyle
//
//  Created by MacBook Pro on 18/04/24.
//

import SwiftUI

struct AddNumberView: View {
    @State private var number1: String = ""
    @State private var number2: String = ""
//    @State private var result: Double = 0
    @State private var result: String = ""
    
    var body: some View {
        VStack(spacing: 40){
            TextField("Inser first number", text: $number1)
                .keyboardType(.decimalPad)
            TextField("Inser second number", text: $number2)
            
//            Text(String(format: "Results = %.0f", result))
            Text("Results = \(result)")
            
            Button{
                resultAddition()
            } label: {
                Text("Add")
            }
            .buttonStyle(BorderedButtonStyle())
        }
        .textFieldStyle(.roundedBorder)
        .padding()
        
        
    }
    
    // MARK: -FUNC ADDITION
    func add(firstNumber: Double, secondNumber: Double) -> Double {
        let results = firstNumber + secondNumber
        
        return results
    }
    
    // MARK: -FUNC RESULT ADDITION
    func resultAddition() {
        if let num1 = Double(number1), let num2 = Double(number2){
            let results = add(firstNumber: num1, secondNumber: num2)
//            result = add(firstNumber: num1, secondNumber: num2)
            result = String(format: "%.0f", results)
            print(add(firstNumber: num1, secondNumber: num2))
        } else{
            result = String("Invalid input")
        }
    }
}

#Preview {
    AddNumberView()
}
