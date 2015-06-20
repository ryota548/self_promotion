//
//  WebViewController.swift
//  self_promotion
//
//  Created by ryota-ko on 2015/06/20.
//  Copyright (c) 2015年 ryota-ko. All rights reserved.
//

import UIKit

class WebViewController: UIViewController,UIWebViewDelegate {
    
    @IBOutlet var webView : UIWebView!
    var webViewURL : String = "http://yahoo.co.jp"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webView.delegate = self
        
        let url : NSURL = NSURL(string: webViewURL)!
        let urlRequest :NSURLRequest = NSURLRequest(URL: url)
        webView.loadRequest(urlRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

