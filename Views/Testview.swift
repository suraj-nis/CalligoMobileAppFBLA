//
//  Testview.swift
//  Calligo
//
//  Created by Suraj Nistala on 3/6/23.
//

import SwiftUI

struct Testview: View {
    @State var one_star = false
    
    var body: some View {
        
        ForEach(0..<5) { star in
            
            Button {
                one_star.toggle()
            } label: {
                Image(systemName: "star.fill")
                    .position(x:115+CGFloat(star*10),y:200)
                    .foregroundColor(one_star ? .yellow:.black)
            }
        }

    }
}

struct Testview_Previews: PreviewProvider {
    static var previews: some View {
        Testview()
    }
}
