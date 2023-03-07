//
//  TwitterView.swift
//  Calligo
//
//  Created by Suraj Nistala on 3/5/23.
//

import SwiftUI
import WebKit


struct TwitterView: View {
    
    
    
    @State private var showWebView = true
    private let urlString: String = "https://twitter.com/Calligo_FBLA"
    
    var body: some View {
        Button {
            showWebView.toggle()
        } label: {
            Text("Wasss uppp")
                .opacity(0)
        }
        .sheet(isPresented: $showWebView) {
            WebView(url: URL(string:urlString)!)
        }

    }
}





struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context:Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url:url)
        uiView.load(request)
    }
}


struct TwitterView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterView()
    }
}
