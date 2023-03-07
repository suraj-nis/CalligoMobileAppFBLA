//
//  faqView.swift
//  Calligo Nav
//
//  Created by Suraj Nistala on 3/5/23.
//


import SwiftUI

struct faqView: View {
    
    
    @State var DropDown1 = false
    @State var DropDown2 = false
    @State var DropDown3 = false
    @State var DropDown4 = false
    @State var DropDown5 = false
    @State var DropDown6 = false
    @State var DropDown7 = false
    @State var DropDown8 = false
    @State var DropDown9 = false
    @State var DropDown10 = false
    
    
    var body: some View {
        ScrollView {
            VStack {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .frame(width: 500, height:160)
                        .position(x:197,y:15)
                        .foregroundColor(Color(red: 0.223, green: 0.716, blue: 1.001))
                    Image("auth_logo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .position(x: 197, y:39)
                    
                }
                
                Link(destination: URL(string: "https://www.simpleswiftguide.com")!) {
                    HStack {
                        Image("questionMark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Text("Need more help? Contact us here!")
                            .foregroundColor(.blue)
                            .underline()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .position(x: 202, y:-40)
                
                
                VStack {
                    
                    
                    ZStack {
                        if DropDown1 == false {
                            Button(action: {
                                DropDown1.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    HStack {
                                        Text("How do I report my child absent?")
                                            .padding(.trailing, 50.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown1 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown1 == true {
                            VStack {
                                Button(action: {
                                    DropDown1.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How do I report my child absent?")
                                                .padding(.trailing, 50.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown1 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("""
If your child is absent from school, you can report the absence to the school in a few ways:

1. Call the school: You can call the school's attendance office and inform them that your child is absent. Be sure to provide your child's name, grade, and reason for absence.

2. Send an email: LHS hasan email address specifically for reporting absences. Check the LHS website or contact the attendance office to find out the email address.

3. Use the Genesis online portal: LHS has access to an online portal that allow parents to report absences. Check the LHS website for access to the online portal - livingston.org/lhs.

4. Write a note: You can write a note explaining your child's absence and send it with your child when they return to school.

It's important to report your child's absence as soon as possible to ensure that the school is aware of their absence and to avoid any truancy issues.
""")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    
                    ZStack {
                        if DropDown2 == false {
                            Button(action: {
                                DropDown2.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("How do I edit my profile?")
                                            .padding(.trailing, 110.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown2 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown2 == true {
                            VStack {
                                Button(action: {
                                    DropDown2.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How do I edit my profile?")
                                                .padding(.trailing, 110.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown2 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("Go to your profile page, then click on edit profile to change your bio, image, and settings.")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    ZStack {
                        if DropDown3 == false {
                            Button(action: {
                                DropDown3.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("How do I add a post?")
                                            .padding(.trailing, 140.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown3 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown3 == true {
                            VStack {
                                Button(action: {
                                    DropDown3.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How do I add a post?")
                                                .padding(.trailing, 140.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown3 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("Click the + sign next to your previous posts. Once this has happened, select up to 10 images to add to your post.")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    ZStack {
                        if DropDown4 == false {
                            Button(action: {
                                DropDown4.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("How do I log out?")
                                            .padding(.trailing, 170.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown4 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown4 == true {
                            VStack {
                                Button(action: {
                                    DropDown4.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How do I log out?")
                                                .padding(.trailing, 170.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown4 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("Go to your profile page, click settings, scroll to the bottom, and click log out. Make sure to confirm when it promts you to.")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    
                    ZStack {
                        if DropDown5 == false {
                            Button(action: {
                                DropDown5.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("How do I create a new account?")
                                            .padding(.trailing, 60.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown5 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown5 == true {
                            VStack {
                                Button(action: {
                                    DropDown5.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How do I create a new account?")
                                                .padding(.trailing, 60.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown5 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("After logging out, click create new account, and sign up with your prefered method.")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    
                    ZStack {
                        if DropDown6 == false {
                            Button(action: {
                                DropDown6.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.gray, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("How do I see my upcoming events?")
                                            .padding(.trailing, 30.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown6 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown6 == true {
                            VStack {
                                Button(action: {
                                    DropDown6.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 30)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How do I see my upcoming events?")
                                                .padding(.trailing, 30.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown6 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("By clicking on calandar, you can see all your upcoming events for the near future.")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    
                    ZStack {
                        if DropDown7 == false {
                            Button(action: {
                                DropDown7.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("How do I contact Calligo?")
                                            .padding(.trailing, 105.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown7 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown7 == true {
                            VStack {
                                Button(action: {
                                    DropDown7.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How do I contact Calligo?")
                                                .padding(.trailing, 105.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown7 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("You may contact Calligo by emailing Calligo Support. The email for Calligo Support is weSupportOthers@gmail.com")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    
                    ZStack {
                        if DropDown8 == false {
                            Button(action: {
                                DropDown8.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("What happens if I encounter a bug?")
                                            .padding(.trailing, 30.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown8 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown8 == true {
                            VStack {
                                Button(action: {
                                    DropDown8.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("What happens if I encounter a bug?")
                                                .padding(.trailing, 30.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown8 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("You may contact Calligo by emailing Calligo Support to report any bugs you may have. The email for Calligo Support is weSupportOthers@gmail.com")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    
                    ZStack {
                        if DropDown9 == false {
                            Button(action: {
                                DropDown9.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("How do I get to Calligo's social media?")
                                            .padding(.trailing, 10.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown9 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown9 == true {
                            VStack {
                                Button(action: {
                                    DropDown9.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How do I get to Calligo's social media?")
                                                .padding(.trailing, 10.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown9 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("Calligo's social media account is just like any other! You may view updates on their social media page by searching them up and following them.")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                    
                    ZStack {
                        if DropDown10 == false {
                            Button(action: {
                                DropDown10.toggle()
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
//                                        .border(Color.black, width: 2)
                                        .foregroundColor(Color.white)
                                        .frame(height:45)
                                        .padding(.horizontal)
                                        .shadow(radius: 3)
                                    
                                    HStack {
                                        Text("How often does Calligo do maintanence?")
                                            .padding(.trailing, -10.0)
                                            .foregroundColor(.black)
                                        
                                        if DropDown10 == true {
                                            Image("triangleDown")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        } else {
                                            Image("triangleRight")
                                                .resizable()
                                                .frame(width: 35, height: 35)
                                        }
                                    }
                                }
                            }
                        }
                        
                        if DropDown10 == true {
                            VStack {
                                Button(action: {
                                    DropDown10.toggle()
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 15)
//                                            .border(Color.black, width: 2)
                                            .foregroundColor(Color.white)
                                            .frame(height:45)
                                            .padding(.horizontal)
                                            .shadow(radius: 3)
                                        
                                        HStack {
                                            Text("How often does Calligo do maintanence?")
                                                .padding(.trailing, -10.0)
                                                .foregroundColor(.black)
                                            
                                            if DropDown10 == true {
                                                Image("triangleDown")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            } else {
                                                Image("triangleRight")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                            }
                                        }
                                    }
                                }
                                ScrollView {
                                    Text("Callgio often does maintenence, at least once every other day, ensuring satisfaction of its users. If there is any other issues found, Calligo makes it their main priority to fix the problem.")
                                    .lineSpacing(5)
//                                    .border(.black, width: 2)
                                    .multilineTextAlignment(.center)
                                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                                    .frame(width: 361)
                                    .shadow(radius: 3)
                                    .padding()
                                }
                            }
                        }
                    }
                    
                }
                .padding(.top, -50.0)
//                .shadow(radius: 3)
                
            }
        }
        
    }
    
    
    
    
}

struct faqView_Previews: PreviewProvider {
    static var previews: some View {
        faqView()
    }
}
