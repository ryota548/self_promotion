//
//  ViewController.swift
//  self_promotion
//
//  Created by ryota-ko on 2015/06/17.
//  Copyright (c) 2015年 ryota-ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var webViewURL : String = "http://yahoo.co.jp"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "goWebView") {
            var WebView : WebViewController = segue.destinationViewController as! WebViewController
            
            switch sender!.tag{
            case 1:
                webViewURL = "https://life-is-tech.com/"
            case 2:
                webViewURL = "http://geiot.jp/"
            case 3:
                webViewURL = "http://aromajoin.com/"
            default:
                webViewURL = "http://yahoo.co.jp"
            }

            WebView.webViewURL = self.webViewURL

        }
    }

}

