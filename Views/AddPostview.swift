//
//  AddPostview.swift
//  Calligo Nav
//
//  Created by slitherboy on 2/28/23.
//

import SwiftUI


    
    


struct AddPostview: View {
        @State private var selectedImage: UIImage?
        @State private var caption_: String = ""
        @State private var tagFriend: String = ""
        @State private var tagEvent: String = ""
        @State private var tagLocation: String = ""
        @State private var showingImagePicker: Bool = false
        
        @EnvironmentObject var dataManager: DataCourseManager
    
    @State private var showHomeView = false
    @FocusState private var isfocused: Bool
    
        var body: some View {
            
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color("Background"))
                    .frame(width:400,height:100)
                    .position(x:200,y:-10)
                
                
                
                HStack {
                    
                    Image("back_post")
                        .offset(x:-100)
                    Text("New Post")
                        .foregroundColor(.white)
                        .font(.system(size:20,weight: .semibold))
                    
                    Button {
                        
                    } label: {
                        Image("addP_post")
                            .offset(x:100)
                    }

                    
                    
                    
                }.position(x:200,y:10)
                
                
                
                VStack(alignment: .leading, spacing: 10) {
              
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Button(action: {
                            self.showingImagePicker = true
                        }) {
                            ZStack {
                                Rectangle()
                                    .fill(Color.gray.opacity(0.2))
                                    .frame(height: 200)
                                    .cornerRadius(10)
                                
                                if let image = selectedImage {
                                    Image(uiImage: image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 200)
                                        .cornerRadius(10)
                                } else {
                                    Image(systemName: "camera")
                                        .font(.system(size: 60))
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                        TextField("Write a caption", text: $caption_)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .focused($isfocused)
                        
                        HStack(spacing: 20) {
                            TextField("Tag a friend", text: $tagFriend)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .focused($isfocused)
                            TextField("Tag an event", text: $tagEvent)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .focused($isfocused)
                            TextField("Tag a location", text: $tagLocation)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .focused($isfocused)
                        }
                        
                        Button(action: {
                            dataManager.addPost(caption: caption_)
                            dataManager.fetchPosts()
                            isfocused = false
                            
                        }) {
                            Text("Add")
                                .foregroundColor(.white)
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("Background"))
                                .cornerRadius(10)
                        }
                        
                      
                    }
                    .padding()
                }.offset(y:-120)
            }
    //        .sheet(isPresented: $showingImagePicker) {
    //            ImagePicker(selectedImage: self.$selectedImage)
    //        }
        }
    }



    struct AddPostview_Previews: PreviewProvider {
        static var previews: some View {
            AddPostview()
                .environmentObject(DataCourseManager())
        }
    }
