//
//  BugView.swift
//  Calligo
//
//  Created by Suraj Nistala on 3/5/23.
//


import SwiftUI

struct BugReportView: View {
    @State private var selectedOption: String?
    @State private var customProblem: String = ""
    
    let options = ["Crash", "UI glitch", "Performance issue", "Feature request"]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Report a Problem")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Background"))
                
                ForEach(options, id: \.self) { option in
                    Button(action: { selectOption(option) }) {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(selectedOption == option ? .red : Color("Background"))
                            .overlay(Text(option)
                                        .foregroundColor(.white)
                                        .fontWeight(.semibold))
                            .frame(height: 50)
                    }
                }
                
                TextField("Describe Problem...", text: $customProblem)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer()
            }
            .padding()
//            .navigationBarTitle("Bug Report")
            .navigationBarItems(trailing: Button(action: submitReport) {
                Text("Submit")
                    .fontWeight(.bold)
                    .foregroundColor(Color("Background"))
            })
        }
    }
    
    func selectOption(_ option: String) {
        if selectedOption == option {
            selectedOption = nil
        } else {
            selectedOption = option
        }
    }
    
    func submitReport() {
        var problemDescription = ""
        
        if let selectedOption = selectedOption {
            problemDescription = "Problem type: \(selectedOption)\n"
        }
        
        if !customProblem.isEmpty {
            problemDescription += "Custom problem: \(customProblem)"
        }
        
        // Code to submit the bug report goes here
    }
}

struct BR_Previews: PreviewProvider {
    static var previews: some View {
        BugReportView()
    }
}
