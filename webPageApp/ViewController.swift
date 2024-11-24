//
//  ViewController.swift
//  webPageApp
//
//  Created by Dimitar Angelov on 25.11.24.
//


import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a WebView and set it as the main view
        webView = WKWebView(frame: self.view.frame)
        webView.navigationDelegate = self
        self.view.addSubview(webView)
        
        // Load your website URL
        if let url = URL(string: "https://angelovtech.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
