//
//  DataCourseManager.swift
//  Calligo Nav
//
//  Created by slitherboy on 3/4/23.
//

import SwiftUI
import Firebase

class DataCourseManager: ObservableObject {
    
    @Published var courses: [Course] = []
    @Published var posts: [Post] = []
    
    
    
    
    init() {
        fetchCourses()
        fetchPosts()
        
    }
    
    func fetchCourses() {
        courses.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Courses")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    let bg_color = data["bg_color"] as? String ?? ""
                    let overview = data["overview"] as? String ?? ""
                    let reviews = data["reviews"] as? String ?? ""
                    let stars = data["stars"] as? Int ?? 0
                    let image = data["image"] as? String ?? ""
                    
                    let course = Course(id: id, name: name, bg_color: bg_color, overview: overview, reviews: reviews,stars: stars,image: image)
                    self.courses.append(course)
                }
            }
            
        }
    }
    
    
    
    
    
    func fetchPosts() {
        posts.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Posts")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let caption = data["caption"] as? String ?? ""
                    let image = data["image"] as? String ?? ""
                    let user = data["user"] as? String ?? ""
                    let user_image = data["user_image"] as? String ?? ""
                
                    
                    let post = Post(id: id, caption: caption, image: image, user: user, user_image: user_image)
                    self.posts.append(post)
                }
            }
            
        }
    }
    
    
    
    
    
    
    
    func addPost(caption:String) {
        let db = Firestore.firestore()
        let ref = db.collection("Posts").document("post_4")
        ref.setData(["caption": caption, "id" : "3", "image":"tree_profile","user":"suraj_nistala","user_image":"profile_profile"]) { error in
            if let error = error {
                print(error.localizedDescription)
            }
            
        }
    }
    
    
    
    
    
}
