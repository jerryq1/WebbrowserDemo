//
//  ViewController.swift
//  WebbrowserDemo
//
//  Created by jerry on 16/10/22.
//  Copyright © 2016年 jerry. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var webView: UIWebView!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func loadWeb(urlString:String){
        let url = NSURL(string: urlString)
        let request = NSURLRequest(URL:url!)
        webView.loadRequest(request)
        webView.scalesPageToFit = true
        
    }
    

    
    @IBAction func showWeb(sender: AnyObject) {
        textField.resignFirstResponder()
        self.loadWeb(textField.text!)
    }
    
    

}

