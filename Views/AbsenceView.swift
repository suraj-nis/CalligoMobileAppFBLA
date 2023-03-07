//
//  AbsenceView.swift
//  Calligo
//
//  Created by Suraj Nistala on 3/6/23.
//

import SwiftUI

struct AbsenceView: View {
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
                        //             Also demo one with 
                        
                    }
                    
                    
                    Divider().frame(height: 1).background(.gray.opacity(0.4))
                    
                  
                    
                }
                
            }
            
        }
    }


struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView()
    }
}
