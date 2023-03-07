//
//  AuthView.swift
//  Calligo Nav
//
//  Created by slitherboy on 3/4/23.
//

import SwiftUI
import Firebase

struct AuthView: View {
    
    
    
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State public var showingLoginScreen = false
    
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    @StateObject var dataManager = DataCourseManager()
    
    
    
    
    var body: some View {
       
        
        
        if showingLoginScreen {
            ContentView()
                .environmentObject(dataManager)
                
            
        }
        else {
            content
        }
        
        
    }
    
    
    
    var content: some View {
        
        NavigationView {
            
            ZStack {
                
               
                 
                Color("Background")
                    .ignoresSafeArea()
             
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                Image("auth_logo")
                    .offset(y:-180)
                
                VStack {
                   
                       
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                       
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        login()
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                 
                }.onAppear {
                    Auth.auth().addStateDidChangeListener {auth, user in
                        if user != nil {
                            showingLoginScreen.toggle()
                         
                        }
                    }
                    
                }
                
                
            }.navigationBarHidden(true)
            
        } .onAppear {
            
            DispatchQueue
                .main
                .asyncAfter(deadline: .now()+7){
              launchScreenManager.dismiss()
            }
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func login() {
        Auth.auth().signIn(withEmail: username,password: password ) { result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    
    
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
            .environmentObject(LaunchScreenManager())
    }
}
