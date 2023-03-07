//
//  SettingsView.swift
//  Calligo
//
//  Created by Suraj Nistala on 3/5/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        
        NavigationView {
            
            
            List {
                Section(header: Text("Account")) {
                    NavigationLink(destination: AccountView()) {
                        Text("Profile")
                    }
                }
                
                Section(header: Text("Support")) {
                    NavigationLink(destination: ContactUsView()) {
                        Text("Contact Us")
                    }
                    NavigationLink(destination: faqView()) {
                        Text("Frequently Asked Questions")
                    }
                    NavigationLink(destination: AboutView()) {
                        Text("About")
                    }
                }
            }
            .navigationBarTitle("Settings")
            
        }
    }
}

struct AccountView: View {
    var body: some View {
        Text("Account View")
    }
}

struct ContactUsView: View {
    var body: some View {
        Text("Contact Us View")
    }
}

struct AboutView: View {
    var body: some View {
        Text("About View")
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
