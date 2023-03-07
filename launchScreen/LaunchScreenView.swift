//
//  LaunchScreenView.swift
//  Calligo Nav
//
//  Created by slitherboy on 3/4/23.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    
    @State private var firstPhaseIsAnimating: Bool = false
    @State private var secondPhaseIsAnimating: Bool = false
    
    private let timer = Timer.publish(every: 0.65,
                                      on: .main,
                                      in: .common).autoconnect()
    var body: some View {
        ZStack{
            background
            logo
        }
        
        .onReceive(timer) { input in
            
            switch launchScreenManager.state {
            case .first:
                //First phase continous scaling
                withAnimation(.spring()) {
                    firstPhaseIsAnimating.toggle()
                }
            case .second:
              
                withAnimation(.easeInOut(duration: 0.5)) {
                    secondPhaseIsAnimating.toggle()
                }
            default:break
                
            }
            
           
          
        }.opacity(secondPhaseIsAnimating ? 0:1)
        
        
        
        
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
            .environmentObject(LaunchScreenManager())
    }
}

private extension LaunchScreenView {
    var background: some View {
        Color("Background")
            .edgesIgnoringSafeArea(.all)
    }
    
    var logo: some View {
        Image("logo_launch")
            .scaleEffect(firstPhaseIsAnimating ? 0.6:1)
            .scaleEffect(secondPhaseIsAnimating ? UIScreen.main.bounds.size.height/4:1)
    }
}
