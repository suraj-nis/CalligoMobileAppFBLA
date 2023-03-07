//
//  HomeView.swift
//  Calligo Nav
//
//  Created by slitherboy on 2/28/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var dataManager: DataCourseManager
    
    @State var searchText: String = ""
    @State var showView: Bool = false
    @State var post_counter: Int = 0
    
    @State private var showSettingsView = false
    
 
    var body: some View {
        
      
            
            
            
            
            ScrollView(.vertical, showsIndicators: true, content: {
                
                
                ZStack {
                    
                    
                    
                    
                    Button {
                        showSettingsView.toggle()
                    }label: {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 2)
                                .frame(width: 36, height:3)
                                .position(x:40,y:-20)
                                .foregroundColor(showView ? .white:.blue)
                            
                            RoundedRectangle(cornerRadius: 2)
                                .frame(width: 36, height:3)
                                .position(x:40,y:-12)
                                .foregroundColor(showView ? .white:.blue)
                            
                            RoundedRectangle(cornerRadius: 2)
                                .frame(width: 36, height:3)
                                .position(x:40,y:-4)
                                .foregroundColor(showView ? .white:.blue)
                            
                            
                        }
                        
                    }.offset(y:10)
                    
                    
                        .sheet(isPresented: $showSettingsView){
                            BulletView()
                        }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Text("Welcome Back")
                        .font(.system(size:13,weight:.semibold,design:.default))
                        .position(x:82,y:42)
                        .foregroundColor(.gray)
                        .opacity(showView ? 0:1)
                    
                    
                    
                    
                    Text("Suraj Nistala")
                        .font(.system(size:23,weight:.semibold,design:.default))
                        .position(x:102,y:72)
                        .opacity(showView ? 0:1)
                        .foregroundColor(.black)
                    
                    
                    
                    
                    Image("profile_home")
                        .position(x:332,y:56)
                    
                    
                    
                    
                    
                    
                    Text("Today")
                        .font(.system(size:23,weight:.semibold,design:.default))
                        .position(x:68,y:116)
                        .opacity(showView ? 0:1)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    HStack {
                        RoundedRectangle(cornerRadius:20)
                            .frame(width:147,height:139)
                            .foregroundColor(Color("upcoming_bg"))
                            .overlay(
                                
                                RoundedRectangle(cornerRadius:20)
                                    .stroke(Color.black, lineWidth: 0.2)
                                
                                
                            )
                            .position(x:107,y:209)
                            .shadow(radius: 3)
                        
                        RoundedRectangle(cornerRadius:20)
                            .frame(width:147,height:139)
                            .foregroundColor(Color("course_bg"))
                            .overlay(
                                
                                RoundedRectangle(cornerRadius:20)
                                    .stroke(Color.black, lineWidth: 0.2)
                                
                                
                            )
                            .position(x:77,y:209)
                            .shadow(radius: 3)
                        
                        
                    }.opacity(showView ? 0:1)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    HStack {
                        
                        TextField("Find a post....", text: $searchText)
                            .font(.system(size: 14, weight:.semibold,design:.default))
                            .accentColor(Color.black)
                            .offset(x:30)
                        
                        Image(systemName: "magnifyingglass")
                            .offset(x:-30)
                        
                        
                    }.opacity(showView ? 0:1)
                    
                    
                    
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("search_bar"))
                                .shadow(
                                    
                                    radius: 10, x:0, y:0)
                            
                                .frame(width: 346, height: 24)
                        )
                        .position(x:200,y:315)
                        .opacity(showView ? 0:1)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width:344, height:310)
                            .overlay(
                                
                                RoundedRectangle(cornerRadius:20)
                                    .stroke(Color.black, lineWidth: 0.2)
                                
                                
                            )
                            .position(x:197,y:505)
                            .foregroundColor(Color("search_bg"))
                            .shadow(radius: 4)
                        
                        
                       
                           
                     
                            Text("Posts for Today")
                                .font(.system(size:21,weight:.semibold))
                                .position(x:115,y:380)
                                .foregroundColor(.black)
                     
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        VStack(spacing:30){
                            
                            
                            
                            
                            ForEach(dataManager.posts, id: \.id) { posts in
                                
                                
                                
                                
                                VStack {
                                    HStack {
                                        Image(posts.user_image)
                                            .resizable()
                                            .frame(width:20,height:20)
                                        
                                        Text(posts.user)
                                            .font(.system(size:14,weight: .semibold))
                                        
                                    }
                                    
                                    Image(posts.image)
                                        .resizable()
                                        .frame(width:160,height:160)
                                        .offset(x:40)
                                    
                                    HStack {
                                        Text(posts.user+":")
                                            .font(.system(size:14,weight: .semibold))
                                            .offset(x:20)
                                        Text(posts.caption)
                                            .font(.system(size:14))
                                            .offset(x:20)
                                    }
                                }.offset(y:25)
                                
                                
                                
                                
                                
                                
                            }
                            
                        }.position(x:155,y:495)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }.opacity(showView ? 0:1)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
            }).offset(y:60)
                .frame(width:400,height:900)//Scrollview
            
        
    }
}




struct BulletView: View {
    
    
    @State private var showTwitterView = false
    @State private var showAbsenceView = false
    @State private var showBugView = false
    @State private var showTermsView = false
    @State private var showHelpView = false
   
    
    
    var body: some View {
        
        
        
        NavigationView {
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color("Background"))
                    .frame(width:400,height:100)
                    .position(x:200,y:50)
                
                Image("auth_logo")
                    .resizable()
                    .position(x:50,y:-275)
                    .frame(width:100,height:100)
                
                
                VStack(spacing: 30) {
                    
                
                    
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color("Background"))
                            .frame(width: 200,height:30)
                        
                        HStack {
                            Image("absence_settings")
                                .tint(.white)
                            Text("Report Absence")
                                .foregroundColor(.white)
                                .font(.system(size:19,weight:.semibold))
                        }
                        
                    }
                    
                    
                    
                    Button {
                        
                        showTwitterView.toggle()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(Color("Background"))
                                .frame(width: 200,height:30)
                            
                            HStack {
                                Image("twitter_settings")
                                    .tint(.white)
                                Text("Twitter")
                                    .foregroundColor(.white)
                                    .font(.system(size:19,weight:.semibold))
                            }
                            
                        }
                    }
                    .sheet(isPresented: $showTwitterView){
                        WebView(url: URL(string:"https://twitter.com/Calligo_FBLA")!)
                    }

                   
                    
                    Button {
                        showBugView.toggle()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(Color("Background"))
                                .frame(width: 200,height:30)
                            
                            HStack {
                                Image("bug_sttings")
                                    .tint(.white)
                                Text("Report Bug")
                                    .foregroundColor(.white)
                                    .font(.system(size:19,weight:.semibold))
                            }
                            
                        }
                    } .sheet(isPresented: $showBugView){
                        BugReportView()
                    }


                 
                    
                    
                    Button {
                        showTermsView.toggle()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(Color("Background"))
                                .frame(width: 200,height:30)
                            
                            HStack {
                                Image("terms_settings")
                                    .resizable()
                                    .tint(.white)
                                    .frame(width: 20,height:20)
                                Text("Terms of use")
                                    .foregroundColor(.white)
                                    .font(.system(size:19,weight:.semibold))
                            }
                            
                        }
                        
                    }  .sheet(isPresented: $showTermsView){
                        WebView(url: URL(string:"https://docs.google.com/document/d/109ryarJeTZh27sqLoiNuRRx5ugoIpuwPadgRKlx369c/edit")!)
                    }


                  
                    
                    Button {
                        showHelpView.toggle()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(Color("Background"))
                                .frame(width: 200,height:30)
                            
                            HStack {
                                Image("help_settings")
                                    .tint(.white)
                                Text("Help")
                                    .foregroundColor(.white)
                                    .font(.system(size:19,weight:.semibold))
                            }
                            
                        }
                    } .sheet(isPresented: $showHelpView){
                        faqView()
                    }

                   
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
            }
            
        }
            
        
        
        
        
        
        
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        
        HomeView()
            .environmentObject(DataCourseManager())
    }
}
