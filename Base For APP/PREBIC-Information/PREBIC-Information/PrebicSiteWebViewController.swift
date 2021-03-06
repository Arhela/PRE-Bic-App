//
//  PrebicSiteWebViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 1/27/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class PrebicSiteWebViewController: UIViewController {

   //MARK OUtlets
    
    // WebView
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // URL to pass in
        let prebicUrl = URL(string: "https://www.prebicglobal.org")
        // create request obj
        let prebicUrlRequest = URLRequest(url: prebicUrl!)
        // Load view
        webView.loadRequest(prebicUrlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Mark Actions
    
    // Go forward in the browser
    @IBAction func goBack(_ sender: Any)
    {
        webView.goBack()
    }
    
    
    @IBAction func goForward(_ sender: Any)
    {
        webView.goForward()
    }

}
