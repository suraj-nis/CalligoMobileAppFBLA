//
//  ProfileView.swift
//  Calligo Nav
//
//  Created by slitherboy on 2/28/23.
//

import SwiftUI

struct ProfileView: View {
    
    
    
    
    
    @State var showEdit: Bool = false
    
    
    
    
    
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                
                
                
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(Color("Background"))
                            .frame(width: 440, height:800)
                            .position(x:198,y:450)
                        
                        
                        RoundedRectangle(cornerRadius: 0)
                            .foregroundColor(Color("bg_name_profile"))
                            .frame(width: 400, height:142)
                            .position(x:200,y:-20)
                        
                        NavigationLink(destination:HomeView()) {
                            Image("back_profile")
                                .position(x:35,y:15)
                        }.transition(.move(edge: .trailing))
                            
                        
                    
                        
                        Text("Suraj Nistala")
                            .position(x:200,y:12)
                            .font(.system(size:23,weight: .semibold))
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Image("profile_profile")
                        .resizable()
                        .frame(width:120, height:120)
                        .overlay(Circle().stroke(Color.white, lineWidth:4))
                        .position(x:199.5,y:10)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    HStack {
                        
                        
                        Image("mail_profile")
                            .offset(x:-5)
                        
                        Button {
                            showEdit.toggle()
                        } label: {
                            Image("bullet_profile")
                            
                        }
                        
                        
                        Image("upload_profile")
                            .offset(x:5)
                    }
                    .position(x:200,y:-20)
                    
                    
                    
                    
                    
                    
                    Text("Biology and Computer science")
                        .foregroundColor(.white)
                        .font(.system(size:19,weight:.semibold))
                        .position(x:200,y:-100)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    HStack {
                        
                        Image("job_profile")
                        Text("Student")
                            .foregroundColor(.white)
                            .font(.system(size:17,weight:.semibold))
                        Image("location_profile")
                        Text("Livingston")
                            .foregroundColor(.white)
                            .font(.system(size:17,weight:.semibold))
                        
                        Image("calendar_profile")
                        Text("Sophmore")
                            .foregroundColor(.white)
                            .font(.system(size:17,weight:.semibold))
                        
                    }
                    .position(x:200,y:-180)
                    
                    
                    
                    
                    
                    
                    
                    
                    Text("@Suraj_Nistala")
                        .foregroundColor(.white)
                        .font(.system(size:19,weight:.semibold))
                        .position(x:200,y:-260)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                if showEdit {
                    ZStack {
                        RoundedRectangle(cornerRadius: 23)
                            .fill(Color.white)
                            .frame(width:300,height:20)
                            .position(x:200,y:550)
                        
                        RoundedRectangle(cornerRadius: 23)
                            .fill(Color.white)
                            .frame(width:300,height:20)
                            .position(x:200,y:500)
                        Text("Change Email...").foregroundColor(.gray)
                            .offset(x:-80, y:145)
                        Image(systemName: "pencil")
                            .offset(x:135,y:145)
                        Image(systemName: "pencil")
                            .offset(x:135,y:195)
                        Text("Change Password...").foregroundColor(.gray)
                            .offset(x:-65, y:195)
                    }
                    
                }
            }
        }
     
        
        
        
        
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
