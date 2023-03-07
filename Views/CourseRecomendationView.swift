//
//  CourseRecomendationView.swift
//  Calligo Nav
//
//  Created by slitherboy on 2/28/23.
//

import SwiftUI

struct CourseRecomendationView: View {
    
    @EnvironmentObject var dataManager: DataCourseManager
    
    @State var searchText: String = ""
    
    @State var course_name: String = ""
    @State var courseSelected: String = ""
    @State private var reload = false

    var body: some View {
        
        
        
        NavigationView {
            
            VStack {
                HStack {
                    
                    TextField("Find a course....", text: $searchText)
                        .font(.system(size: 14, weight:.semibold,design:.default))
                        .accentColor(Color.black)
                    
                    Image(systemName: "magnifyingglass")
                    
                    
                }.offset(x:0, y:40)
                
                
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("search_bar"))
                            .shadow(
                                
                                radius: 10, x:0, y:0)
                            .offset(x:0, y:40)
                            .frame(width: 346, height: 24)
                        
                    )
                
                    .padding()
                
                
                Button {
                    dataManager.fetchCourses()
                } label: {
                    Text("Courses")
                        .font(.system(size: 42, weight:.semibold,design:.default))
                        .foregroundColor(Color("Background"))
                        .offset(x:-90, y:20)
                }

               
                
                
                
                
                
                
                
                ScrollView(.vertical, showsIndicators: true, content: {
                    VStack {
                        
                        
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .fill(Color.white)
                            .frame(width: 400, height: 1)
                        
                        //First Course
                        
                        ZStack {
                            
                        
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Color("Course_bg2"))
                                    .frame(width: 319, height: 191)
                                    .border(Color.black,width:  0.3)
                                    .shadow(radius: 10)
                            

                      
                            
                            NavigationLink(
                                
                                destination: CourseRec(course_selected:$courseSelected), label: {
                                    
                                
                                    Image("Psch")
                                        .resizable()
                                        .frame(width:110, height:110)
                                        .offset(x:0,y:5)
                                }
                            )
                            
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 4, style: .continuous)
                                    .fill(Color.white)
                                    .frame(width: 319, height: 29)
                                    .border(Color.black,width:  0.3)
                                    .offset(x:0,y:-85)
                                
                                HStack {
                                    Text("AP Biology")
                                        .offset(x:-57,y:-85)
                                        .font(.system(size: 17, weight:.semibold,design:.default))
                                    
                                    ForEach(0..<5) {index in
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .frame(width:12, height:12)
                                            .offset(x:50+CGFloat(1*index),y:-85)
                                            .foregroundColor(Color("star"))
                                        
                                    }
                                    
                                    
                                }
                            }
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        //Second Course
                        
                        
                        ForEach(dataManager.courses, id: \.id) { course in
                            
                            
                            
                            ZStack {
                                
                                Button {
                                    courseSelected = course.id
                                  
                                } label: {
                                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                                        .fill(Color(course.bg_color))
                                        .frame(width: 319, height: 191)
                                        .border(Color.black,width:  0.3)
                                        .shadow(radius: 10)
                                }

                             
                                
                                NavigationLink(
                                    
                                    destination: CourseRec(course_selected: $courseSelected), label: {
                                        Image(course.image)
                                            .resizable()
                                            .frame(width:150, height:150)
                                            .offset(x:0,y:5)
                                    }
                                )
                                ZStack {
                                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                                        .fill(Color.white)
                                        .frame(width: 319, height: 29)
                                        .border(Color.black,width:  0.3)
                                        .offset(x:0,y:-85)
                                    
                                    HStack {
                                        Text(course.name)
                                            .offset(x:-40,y:-85)
                                            .font(.system(size: 17, weight:.semibold,design:.default))
                                        
                                        ForEach(0..<course.stars) {index in
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width:12, height:12)
                                                .offset(x:40+CGFloat(1*index),y:-85)
                                                .foregroundColor(Color("star"))
                                        }
                                        
                                        ForEach(0..<5-course.stars) {index in
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width:12, height:12)
                                                .offset(x:42+CGFloat(1*index),y:-85)
                                        }
                                        
                                        
                                        
                                    }
                                }
                                
                                
                            }.padding(.top)
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                }).offset(x:0,y:10)
                    .frame(width:400, height:670)
                
                
            }
            
        }
        
        
        
        
        
        
       
    }
    

}

















struct CourseRec: View {
    
    @Binding var course_selected: String
    @State var rate = false
    @State var Overview = false
    @State var MoveToRate : Bool = false
    @State var description = ""
    @State var bg_color = ""
    @State var stars = ""
    @State var reviews = ""
    @State var name = ""
    @State var stars_selected = ""
    
    
    @State var one_star = false
    @State var stars_submitted = false
    
    @EnvironmentObject var dataManager: DataCourseManager
    
    
    var body: some View {
        NavigationView{
            
            ZStack{
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth:2))
                        .frame(width:350, height:570).padding(.bottom,100)
                        .shadow(color:.gray, radius:20)
                    
                    
                    
                    
                
                    
                }
               
                ZStack {
                ForEach(0..<5) { star in
                    
                    Button {
                        one_star.toggle()
                    } label: {
                        Image(systemName: "star.fill")
                            .position(x:115+CGFloat(star*40),y:-180)
                            .foregroundColor(one_star ? .yellow:.black)
                    }

                   
                    
                    
                }
                
                 
                
                 
                }
               
                
                ForEach(dataManager.courses, id: \.id) { course in
                    if course.id == course_selected {
                  
                        VStack{
                            RoundedRectangle(cornerRadius: 10)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color("CDcolor"), lineWidth:2))
                                .foregroundColor(.white)
                                .frame(width:350, height: 50)
                                .position(x:196.3, y:60)
                                .opacity(0.3)
                            
                            Text(course.name)
                                .font(.title)
                                .fontWeight(.bold)
                                .position(x:200, y: -95)
                                
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 349, height:200)
                                .foregroundColor(Color(course.bg_color))
                                .position(x:196.3,y:-114)
                                
                            
                            if rate {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width:40, height:5).position(x:70,y:-112)
                                    .position(x:278,y:92)
                                
                            }
                            else {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width:50, height:5).position(x:70,y:-92)
                                    .padding(.trailing)
                                
                            }
                            
                            
                         
                           
                            
                            ZStack{
                                
        //                        Text("Overview")
        //                            .font(.headline)
        //                            .fontWeight(.semibold)
        //                            .position(x:70, y: -310)
                                
                   
                                
                                if rate{
                                    ZStack {
                                    ForEach(0..<5) { star in
                                        
                                        Button {
                                            one_star.toggle()
                                        } label: {
                                            Image(systemName: "star.fill")
                                                .position(x:115+CGFloat(star*40),y:-180)
                                                .foregroundColor(one_star ? .yellow:.black)
                                        }

                                       
                                        
                                        
                                    }
                                    
                                 
                                        RoundedRectangle(cornerRadius: 5 )
                                            .foregroundColor(Color("Background"))
                                            .frame(width:100,height:30)
                                            .position(x:195,y:-100)
                                        Text("Submit")
                                            .foregroundColor(.white)
                                            .font(.system(size:20))
                                            .position(x:195,y:-100)

                                       
                                    }
                                    
                               

                                }
                                else{
                                    
                                    Text(course.overview)
                                        .position(x:180, y: -180)
                                }
                                
                                
                                   
                                Button("Rate")
                                {
                                    rate.toggle()
                                }.position(x:150, y: -260)
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                                Button("Overview")
                                {
                                    rate.toggle()
                                } .position(x:70, y: -260)
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                
                            
                             
                                
                                Group {
                                    Image(course.image)
                                        .resizable()
                                        .frame(width:130,height:130)
                                        .position(x:200, y:-380)
                                    
                                    
                                    
                                    
                                    
                                }
        //                        Image("BackArrow").resizable()
        //                            .frame(width:20, height:10 )
        //                            .position(x:40, y:-20)
                                
                                
        //                       NavigationLink(
        //
        //                        ("Rate"),
        //
        //                        destination: RatePage()
        //
        //                       ).position(x:150, y: -270)
        //                            .foregroundColor(.black)
                                
                            }
        //                    .padding(.trailing)
                            
                            
                            
                           
                            
                        }
                    }
                    
                }
                
                
                
                
              
              
                
               
            }
            
        }
        
        
        
    }
    
//    func checkOrVieve() {
//        if Overview{
//        rate = false
//        }
//        if rate {
//             Overview = false
//        }
//    }
        
        
    }
















struct CourseRecomendationView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        CourseRecomendationView()
            .environmentObject(DataCourseManager())
    }
}
