//
//  CalendarView.swift
//  Calligo Nav
//
//  Created by slitherboy on 2/28/23.
//

import SwiftUI

struct CalendarView: View {
    
    @EnvironmentObject var dataManager: DataCourseManager
    
    var date = ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]
    
    
    
    var body: some View {
        
        
        
        
        
        
        
        NavigationView {
            
            VStack {
                Text("6-13 Mar 2023")
                    .font(.system(size:22))
                    .position(x:80,y:30)
                
                RoundedRectangle(cornerRadius: 2)
                    .frame(width: 400,height:1)
                    .position(x:200,y:-180)
                    .foregroundColor(.gray)
                    .opacity(0.25)
                
                
                
                
                
            
                
                    ScrollView(.vertical, showsIndicators: true, content: {
                        
                        
                        
                                                    
                            
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 0)
                                    .offset(y:-10)
                                    .frame(width:52,height:161)
                                    .foregroundColor(.white)
                                    .overlay(
                                        
                                        RoundedRectangle(cornerRadius:0)
                                            .stroke(Color.black, lineWidth: 1)
                                            .opacity(0.25)
                                        
                                    )
                                
                                
                                Text(date[0])
                                
                                
                            }
                            
                        ZStack {
                            ForEach(0..<6) { index in
                                
                                
                                
                                
                                
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 0)
                                        .offset(y:-10)
                                        .frame(width:52,height:161)
                                        .foregroundColor(.white)
                                        .overlay(
                                            
                                            RoundedRectangle(cornerRadius:0)
                                                .stroke(Color.black, lineWidth: 1)
                                                .opacity(0.25)
                                            
                                        )
                                    
                                    
                                    
                                    Text(date[index+1])
                                    
                                    
                                }.offset(y:CGFloat(index*168))
                                
                                
                               
                                    ZStack {
                                        
                                        RoundedRectangle(cornerRadius: 9)
                                            .overlay(
                                                
                                                RoundedRectangle(cornerRadius:9)
                                                    .stroke(Color.black, lineWidth: 1)
                                                    .opacity(0.25)
                                                
                                            )
                                            .frame(width: 157,height:139)
                                            .position(x:300,y:200)
                                            .foregroundColor(Color("Course_bg1"))
                                        
                                        
                                        Text("6:00pm")
                                            .position(x:260,y:150)
                                            .font(.system(size: 15,weight:.semibold))
                                        
                                        Text("School Bake Sale")
                                            .position(x:278,y:170)
                                            .font(.system(size: 11))
                                        
                                        Text("7:00pm")
                                            .position(x:340,y:240)
                                            .font(.system(size: 15,weight:.semibold))
                                        
                                        Image("location_calendar")
                                            .position(x:235,y:240)
                                       
                                    
                                    }.position(x:630,y:300)
                                
                                    
                                
                                
                                RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(.white)
                                .opacity(0)
                                .frame(width:800)
                                
                                
                                
                                     ZStack {
                                         
                                         RoundedRectangle(cornerRadius: 9)
                                             .overlay(
                                                 
                                                 RoundedRectangle(cornerRadius:9)
                                                     .stroke(Color.black, lineWidth: 1)
                                                     .opacity(0.25)
                                                 
                                             )
                                             .frame(width: 157,height:139)
                                             .position(x:300,y:200)
                                             .foregroundColor(Color("Course_bg2"))
                                         
                                         
                                         Text("All Day")
                                             .position(x:255,y:150)
                                             .font(.system(size: 15,weight:.semibold))
                                         
                                         Text("FBLA Trip")
                                             .position(x:258,y:170)
                                             .font(.system(size: 11))
                                         
                                         Text("12:00am")
                                             .position(x:340,y:240)
                                             .font(.system(size: 15,weight:.semibold))
                                         
                                         Image("location_calendar")
                                             .position(x:235,y:240)
                                        
                                     
                                     }.position(x:630,y:-40)
                                 
                                     Text("Nothing for Today!")
                                    .foregroundColor(Color("Background"))
                                    .font(.system(size:20))
                                    .offset(x:200,y:-170)
                                
                                Text("Nothing for Today!")
                               .foregroundColor(Color("Background"))
                               .font(.system(size:20))
                               .offset(x:200,y:170)
                                
                                
                            }.offset(y:-10)
                        }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        
                        
                        
                        
                    }).frame(width:400,height:600)
                    .position(x:20,y:-123)
                        
                        
                        
                        
                    
                
                
                
                
                
                
                
            }
            
            
            
            
            
            
            
          
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            .navigationBarItems(
                
                leading:
                    
                    ZStack {
                      
                        HStack {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(Color("upcoming_bg"))
                                    .frame(width: 90,height: 23)
                                    .overlay(
                                        
                                        RoundedRectangle(cornerRadius:20)
                                            .stroke(Color.black, lineWidth: 0.2)
                                        
                                        
                                    )
                                
                                Text("Upcoming")
                                    .font(.system(size:16))
                                
                                
                            }
                            
                            NavigationLink{
                                AttendanceView()
                            }label: {
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(Color("upcoming_bg"))
                                        .frame(width: 90,height: 23)
                                        .overlay(
                                            
                                            RoundedRectangle(cornerRadius:20)
                                                .stroke(Color.black, lineWidth: 0.2)
                                            
                                            
                                        )
                                    
                                    Text("Calendar")
                                        .font(.system(size:16))
                                        .foregroundColor(.black)
                                    
                                    
                                }.offset(x:39)
                            }
                           
                            
                            
                            
                            
                        }
                        
                        
                    },
            
                
                
                
                
                
                trailing:
                    
                    
                    ZStack {
                      
                        
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("upcoming_bg"))
                            .frame(width: 90,height: 23)
                            .overlay(
                                
                                RoundedRectangle(cornerRadius:20)
                                    .stroke(Color.black, lineWidth: 0.2)
                                
                                
                            )
                        
                        Text("Attendance")
                            .font(.system(size:16))
                        
                        
                    }
                    
            
                    
            
            
            )
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}







struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
            .environmentObject(DataCourseManager())
        
    }
}
