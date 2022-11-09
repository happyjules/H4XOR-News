//
//  WebView.swift
//  H4XOR
//
//  Created by Julie Murakami on 11/9/22.
//

import SwiftUI
import Foundation
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}


struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "http://www.google.com")
    }
}
