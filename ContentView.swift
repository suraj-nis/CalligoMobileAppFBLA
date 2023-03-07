//
//  ContentView.swift
//  Calligo Nav
//
//  Created by slitherboy on 2/28/23.
//

import SwiftUI

struct ContentView: View {
    
    var home = true
    var profile = false
    
@EnvironmentObject var launchScreenManager: LaunchScreenManager

    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("Bg-NavBar"))
      }
    
    var body: some View {
        ZStack {
         
            
            TabView {
                
                Group {
                    HomeView()
                        .tabItem() {
                            Image("home_bar")
                            
                        }
                    
                    CourseRecomendationView()
                        .tabItem() {
                            
                            Image("course_bar")
                            
                            
                        }
                    
                    
                    AddPostview()
                        .tabItem() {
                            Image("add_bar")
                            
                        }
                    
                    
                    
                    
                    CalendarView()
                        .tabItem() {
                            Image("calendar_bar")
                            
                            
                        }
                    
                    ProfileView()
                    
                        .tabItem() {
                            Image("profile_bar")
                            
                        }
                }
                
          
                
                
                
            }
        }
        
        
    }
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataCourseManager())
          
    }
}
