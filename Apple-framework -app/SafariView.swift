//
//  SafariView.swift
//  Apple-framework -app
//
//  Created by Simarjeet Kaur on 20/04/25.
//

import SwiftUI
import SafariServices
struct SafariView:UIViewControllerRepresentable{
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
           SFSafariViewController(url:url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
