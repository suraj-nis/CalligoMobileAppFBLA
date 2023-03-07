//
//  AttendanceView.swift
//  Calligo
//
//  Created by Suraj Nistala on 3/6/23.
//

import SwiftUI

struct AttendanceView: View {
    
    @State var selectedDate = Date()
    @State var showEvent = false
    
    var body: some View {
        

        ScrollView {
            VStack {
                
                Button {
                    showEvent.toggle()
                } label: {
                    FormattedDate(selectedDate: selectedDate)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.blue, lineWidth: 2)
                            .frame(width: 275, height: 70)
                        )
                    
                }
                
               
               
                
                Divider().frame(height: 1).background(.gray.opacity(0.4))
                
                ZStack {
                    DatePicker("Select Date", selection: $selectedDate,
                               displayedComponents: .date)
                    .datePickerStyle(.graphical)
                    .frame(width: 350, height: 350)
                    //             Also demo one with time component
                    Circle()
                        .frame(width:10,height:10)
                        .foregroundColor(.red)
                        .offset(x:-50)
                    
                        Circle()
                            .frame(width:10,height:10)
                            .foregroundColor(.red)
                            .offset(x:50)
                    
                }
                
                
                Divider().frame(height: 1).background(.gray.opacity(0.4))
                
                if showEvent {
                    
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundColor(Color("Course_bg1"))
                            .frame(width:360,height: 256)
                        
                        HStack {
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(Color("Background"))
                                .frame(width: 9,height:36)
                            
                            Text("School Bake Sale")
                                .font(.system(size:23))
                        }.position(x:195,y:20)
                        
                        Text("The School Bake sale is a prestigous sale where students will sell you something").position(x:150,y:120)
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .font(.system(size:16))
                            
                        HStack(spacing: 160) {
                            Text("6:00pm-7:00pm")
                            
                            Image("location_c")
                        }.position(x:260,y:220)
                       
                    }
                }

            }
            
        }


    }
}

struct AttendanceView_Previews: PreviewProvider {
    static var previews: some View {
        AttendanceView()
    }
}
